load(
    "@io_bazel_rules_dotnet//dotnet/private:common.bzl",
    "as_iterable",
)
load(
    "@io_bazel_rules_dotnet//dotnet/private:skylib/lib/paths.bzl",
    "paths",
)
load(
    "@io_bazel_rules_dotnet//dotnet/private:providers.bzl",
    "DotnetLibrary",
    "DotnetResource",
    "DotnetResourceList",
)
load(
    "@io_bazel_rules_dotnet//dotnet/private:actions/resolve.bzl",
    "ResolveVersions",
)

def _map_dep(deps):
    return deps[DotnetLibrary].result.path

def _map_resource(d):
    return d.result.path + "," + d.identifier

def _make_runner_arglist(dotnet, deps, resources, output, pdb, executable, defines, unsafe, keyfile):
    args = dotnet.actions.args()

    # /out:<file>
    args.add(output.path, format = "/out:%s")

    if executable:
        target = "exe"
    else:
        target = "library"

    # /target (exe for binary, library for lib, module for module)
    args.add(target, format = "/target:%s")

    args.add("/fullpaths")
    args.add("/nostdlib")
    if pdb:
        args.add("-debug")

    # /warn
    #args.add(format="/warn:%s", value=str(ctx.attr.warn))

    # /nologo
    args.add("/nologo")

    # /modulename:<string> only used for modules
    #libdirs = _get_libdirs(depinfo.dlls)
    #libdirs = _get_libdirs(depinfo.transitive_dlls, libdirs)

    # /lib:dir1,[dir1]
    #if libdirs:
    #  args.add(format="/lib:%s", value=libdirs)

    if deps and len(deps) > 0:
        args.add_all(deps, format_each = "/reference:%s", map_each = _map_dep)

    args.add(dotnet.stdlib, format = "/reference:%s")

    if defines and len(defines) > 0:
        args.add_all(defines, format_each = "/define:%s")

    if unsafe:
        args.add("/unsafe")

    if keyfile:
        args.add("-keyfile:" + keyfile.files.to_list()[0].path)

    # /debug
    #debug = ctx.var.get("BINMODE", "") == "-dbg"
    #if debug:
    #  args.add("/debug")

    # /warnaserror
    # TODO(jeremy): /define:name[;name2]

    for r in resources:
        if r[DotnetResourceList].result and len(r[DotnetResourceList].result) > 0:
            args.add_all(r[DotnetResourceList].result, format_each = "/resource:%s", map_each = _map_resource)

    # TODO(jeremy): /resource:filename[,identifier[,accesibility-modifier]]

    # /main:class
    #if hasattr(ctx.attr, "main_class") and ctx.attr.main_class:
    #  args.add(format="/main:%s", value=ctx.attr.main_class)

    #args.add(format="/resource:%s", value=ctx.files.resources)

    # TODO(jwall): /parallel

    return args

def emit_assembly(
        dotnet,
        name = "",
        srcs = None,
        deps = None,
        out = None,
        resources = None,
        executable = True,
        defines = None,
        unsafe = False,
        data = None,
        keyfile = None,
        subdir = "./"):
    """See dotnet/toolchains.rst#binary for full documentation."""

    if name == "" and out == None:
        fail("either name or out must be set")

    if not out:
        result = dotnet.declare_file(dotnet, path = subdir + name)
    else:
        result = dotnet.declare_file(dotnet, path = subdir + out)

    if dotnet.debug:
        pdb = dotnet.declare_file(dotnet, path = result.basename + ".mdb", sibling = result)
    else:
        pdb = None

    transitive, transitive_runfiles = ResolveVersions(deps)

    runner_args = _make_runner_arglist(dotnet, transitive.to_list(), resources, result, pdb, executable, defines, unsafe, keyfile)

    attr_srcs = [f for t in srcs for f in as_iterable(t.files)]
    runner_args.add_all(attr_srcs)

    runner_args.set_param_file_format("multiline")

    # Use a "response file" to pass arguments to csc.
    # Windows has a max command-line length of around 32k bytes. The default for
    # Args is to spill to param files if the length of the executable, params
    # and spaces between them sum to that number. Unfortunately the math doesn't
    # work out exactly like that on Windows (e.g. there is also a null
    # terminator, escaping.) For now, setting use_always to True is the
    # conservative option. Long command lines are probable with C# due to
    # organizing files by namespace.
    paramfilepath = name + ".param"
    paramfile = dotnet.declare_file(dotnet, path = paramfilepath)

    dotnet.actions.write(output = paramfile, content = runner_args)

    deps_files = [d[DotnetLibrary].result for d in transitive.to_list()]
    dotnet.actions.run(
        inputs = attr_srcs + [paramfile] + deps_files + [dotnet.stdlib, dotnet.mcs] + [r[DotnetResource].result for r in resources],
        outputs = [result] + ([pdb] if pdb else []),
        executable = dotnet.runner,
        arguments = [dotnet.mcs.path, "/noconfig", "@" + paramfile.path],
        mnemonic = "MonoCompile",
        progress_message = (
            "Compiling " + dotnet.label.package + ":" + dotnet.label.name
        ),
    )

    extra = [] if data == None else [d.files for d in data]
    runfiles = depset(direct = [result] + [dotnet.stdlib] + ([pdb] if pdb else []), transitive = [transitive_runfiles] + extra)
    transitive = depset(direct = deps, transitive = [transitive])

    return dotnet.new_library(
        dotnet = dotnet,
        name = name,
        deps = deps,
        transitive = transitive,
        result = result,
        pdb = None,
        runfiles = runfiles,
    )
