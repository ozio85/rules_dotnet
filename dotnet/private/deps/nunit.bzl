load("@io_bazel_rules_dotnet//dotnet/private:rules/nuget.bzl", "nuget_package")

def dotnet_repositories_nunit():
    ### Generated by the tool
    nuget_package(
        name = "nunit",
        package = "nunit",
        version = "3.12.0",
        sha256 = "62b67516a08951a20b12b02e5d20b5045edbb687c3aabe9170286ec5bb9000a1",
        core_lib = {
            "netcoreapp2.0": "lib/netstandard2.0/nunit.framework.dll",
            "netcoreapp2.1": "lib/netstandard2.0/nunit.framework.dll",
        },
        net_lib = {
            "net45": "lib/net45/nunit.framework.dll",
            "net451": "lib/net45/nunit.framework.dll",
            "net452": "lib/net45/nunit.framework.dll",
            "net46": "lib/net45/nunit.framework.dll",
            "net461": "lib/net45/nunit.framework.dll",
            "net462": "lib/net45/nunit.framework.dll",
            "net47": "lib/net45/nunit.framework.dll",
            "net471": "lib/net45/nunit.framework.dll",
            "net472": "lib/net45/nunit.framework.dll",
            "netstandard1.4": "lib/netstandard1.4/nunit.framework.dll",
            "netstandard1.5": "lib/netstandard1.4/nunit.framework.dll",
            "netstandard1.6": "lib/netstandard1.4/nunit.framework.dll",
            "netstandard2.0": "lib/netstandard2.0/nunit.framework.dll",
        },
        mono_lib = "lib/net45/nunit.framework.dll",
        core_files = {
            "netcoreapp2.0": [
               "lib/netstandard2.0/nunit.framework.dll",
               "lib/netstandard2.0/nunit.framework.pdb",
               "lib/netstandard2.0/nunit.framework.xml",
            ],
            "netcoreapp2.1": [
               "lib/netstandard2.0/nunit.framework.dll",
               "lib/netstandard2.0/nunit.framework.pdb",
               "lib/netstandard2.0/nunit.framework.xml",
            ],
        },
        net_files = {
            "net45": [
               "lib/net45/nunit.framework.dll",
               "lib/net45/nunit.framework.pdb",
               "lib/net45/nunit.framework.xml",
            ],
            "net451": [
               "lib/net45/nunit.framework.dll",
               "lib/net45/nunit.framework.pdb",
               "lib/net45/nunit.framework.xml",
            ],
            "net452": [
               "lib/net45/nunit.framework.dll",
               "lib/net45/nunit.framework.pdb",
               "lib/net45/nunit.framework.xml",
            ],
            "net46": [
               "lib/net45/nunit.framework.dll",
               "lib/net45/nunit.framework.pdb",
               "lib/net45/nunit.framework.xml",
            ],
            "net461": [
               "lib/net45/nunit.framework.dll",
               "lib/net45/nunit.framework.pdb",
               "lib/net45/nunit.framework.xml",
            ],
            "net462": [
               "lib/net45/nunit.framework.dll",
               "lib/net45/nunit.framework.pdb",
               "lib/net45/nunit.framework.xml",
            ],
            "net47": [
               "lib/net45/nunit.framework.dll",
               "lib/net45/nunit.framework.pdb",
               "lib/net45/nunit.framework.xml",
            ],
            "net471": [
               "lib/net45/nunit.framework.dll",
               "lib/net45/nunit.framework.pdb",
               "lib/net45/nunit.framework.xml",
            ],
            "net472": [
               "lib/net45/nunit.framework.dll",
               "lib/net45/nunit.framework.pdb",
               "lib/net45/nunit.framework.xml",
            ],
            "netstandard1.4": [
               "lib/netstandard1.4/nunit.framework.dll",
               "lib/netstandard1.4/nunit.framework.pdb",
               "lib/netstandard1.4/nunit.framework.xml",
            ],
            "netstandard1.5": [
               "lib/netstandard1.4/nunit.framework.dll",
               "lib/netstandard1.4/nunit.framework.pdb",
               "lib/netstandard1.4/nunit.framework.xml",
            ],
            "netstandard1.6": [
               "lib/netstandard1.4/nunit.framework.dll",
               "lib/netstandard1.4/nunit.framework.pdb",
               "lib/netstandard1.4/nunit.framework.xml",
            ],
            "netstandard2.0": [
               "lib/netstandard2.0/nunit.framework.dll",
               "lib/netstandard2.0/nunit.framework.pdb",
               "lib/netstandard2.0/nunit.framework.xml",
            ],
        },
        mono_files = [
            "lib/net45/nunit.framework.dll",
            "lib/net45/nunit.framework.pdb",
            "lib/net45/nunit.framework.xml",
        ],
    )
    nuget_package(
        name = "nunit.consolerunner",
        package = "nunit.consolerunner",
        version = "3.10.0",
        sha256 = "e852dad9a2ec1bd3ee48f3a6be68c7e2322582eaee710c439092c32087f49e84",
        core_lib = {
            "netcoreapp2.0": "tools/Mono.Cecil.dll",
            "netcoreapp2.1": "tools/Mono.Cecil.dll",
        },
        net_lib = {
            "net45": "tools/Mono.Cecil.dll",
            "net451": "tools/Mono.Cecil.dll",
            "net452": "tools/Mono.Cecil.dll",
            "net46": "tools/Mono.Cecil.dll",
            "net461": "tools/Mono.Cecil.dll",
            "net462": "tools/Mono.Cecil.dll",
            "net47": "tools/Mono.Cecil.dll",
            "net471": "tools/Mono.Cecil.dll",
            "net472": "tools/Mono.Cecil.dll",
            "netstandard1.0": "tools/Mono.Cecil.dll",
            "netstandard1.1": "tools/Mono.Cecil.dll",
            "netstandard1.2": "tools/Mono.Cecil.dll",
            "netstandard1.3": "tools/Mono.Cecil.dll",
            "netstandard1.4": "tools/Mono.Cecil.dll",
            "netstandard1.5": "tools/Mono.Cecil.dll",
            "netstandard1.6": "tools/Mono.Cecil.dll",
            "netstandard2.0": "tools/Mono.Cecil.dll",
        },
        mono_lib = "tools/Mono.Cecil.dll",
       core_tool = {
           "netcoreapp2.0": "tools/nunit3-console.exe",
           "netcoreapp2.1": "tools/nunit3-console.exe",
       },
       net_tool = {
           "net45": "tools/nunit3-console.exe",
           "net451": "tools/nunit3-console.exe",
           "net452": "tools/nunit3-console.exe",
           "net46": "tools/nunit3-console.exe",
           "net461": "tools/nunit3-console.exe",
           "net462": "tools/nunit3-console.exe",
           "net47": "tools/nunit3-console.exe",
           "net471": "tools/nunit3-console.exe",
           "net472": "tools/nunit3-console.exe",
           "netstandard1.0": "tools/nunit3-console.exe",
           "netstandard1.1": "tools/nunit3-console.exe",
           "netstandard1.2": "tools/nunit3-console.exe",
           "netstandard1.3": "tools/nunit3-console.exe",
           "netstandard1.4": "tools/nunit3-console.exe",
           "netstandard1.5": "tools/nunit3-console.exe",
           "netstandard1.6": "tools/nunit3-console.exe",
           "netstandard2.0": "tools/nunit3-console.exe",
       },
        mono_tool = "tools/nunit3-console.exe",
        core_files = {
            "netcoreapp2.0": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "netcoreapp2.1": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
        },
        net_files = {
            "net45": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "net451": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "net452": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "net46": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "net461": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "net462": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "net47": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "net471": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "net472": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "netstandard1.0": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "netstandard1.1": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "netstandard1.2": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "netstandard1.3": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "netstandard1.4": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "netstandard1.5": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "netstandard1.6": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
            "netstandard2.0": [
               "tools/Mono.Cecil.dll",
               "tools/nunit-agent-x86.exe",
               "tools/nunit-agent-x86.exe.config",
               "tools/nunit-agent.exe",
               "tools/nunit-agent.exe.config",
               "tools/nunit.engine.api.dll",
               "tools/nunit.engine.api.xml",
               "tools/nunit.engine.dll",
               "tools/nunit.nuget.addins",
               "tools/nunit3-console.exe",
               "tools/nunit3-console.exe.config",
            ],
        },
        mono_files = [
            "tools/Mono.Cecil.dll",
            "tools/nunit-agent-x86.exe",
            "tools/nunit-agent-x86.exe.config",
            "tools/nunit-agent.exe",
            "tools/nunit-agent.exe.config",
            "tools/nunit.engine.api.dll",
            "tools/nunit.engine.api.xml",
            "tools/nunit.engine.dll",
            "tools/nunit.nuget.addins",
            "tools/nunit3-console.exe",
            "tools/nunit3-console.exe.config",
        ],
    )
    ### End of generated by the tool
    return
