![alt Build Passing](https://img.shields.io/badge/Build-Passing-green.svg) ![alt Version v0.1.0](https://img.shields.io/badge/Version-v0.1.0-green.svg)  ![alt Swift v3.0.2](https://img.shields.io/badge/Swift-v3.0.2-green.svg) ![alt Code Coverage 99.37](https://img.shields.io/badge/Code%20Coverage-99.37-green.svg) ![alt Platform MacOS | Linux](https://img.shields.io/badge/Platforms-MacOS%20|%20Linux-green.svg) ![alt Swift Package Compatible](https://img.shields.io/badge/Swift%20Package-Compatible-green.svg) ![alt Carthage Pending](https://img.shields.io/badge/Carthage-Pending-orange.svg) ![alt Pod Pending](https://img.shields.io/badge/Pod-Pending-orange.svg)
# Command Line
A set of base tools for running commandline processes on MacOS and Linux platforms.
## Getting Started
Currently CommandLine is available for installation through Swift Package Manager, with CocoaPods and Carthage following soon.
### Swift Package Manager
Prior to installing this package, please ensure you have installed the latest compatible version of xctools and swift toolchain. If you are creating a brand new project, within terminal:

```sh
mkdir "path/to/your/project"
cd "path/to/your/project"
swift package init --type {empty|library|executable|system-module}
```
This will create the relevant folder structure for the type of project you want to create. For more information around the types of projects you can create with swift package manager, please refer to teh Apple documentation [here](https://github.com/apple/swift-package-manager/tree/master/Documentation).

Once you have created the directory and folder structure you want for you project, installing via Swift package manager is as simple as telling the Package.swift file to retrieve the CommandLine repository:

```swift
import PackageDescription

let package = Package(
name: "{Your-Project-Name}",
dependencies: [
.Package(url: "https://github.com/madapper/CommandLine", Version({Major}, {Minor}, {Patch}))
]
)
```

Once this dependency has been added to the file within terminal, if you want to simply build and run the project, go to terminal:

```sh
cd "path/to/your/project"
swift build
```
This will import the relevant packages into your project. If you have created an executable project, this will also build the executable file that you can run in the terminal. If this is the case, you can run this in the terminal:
```sh
.build/debug/{your-project-name}
```
If you are looking to create an editable project, you can do this within the same project directory by running:
```sh
swift package generate-xcodeproj
```

### CocoPods
Coming soon
### Carthage
Coming soon
## Usage
The CommandLine system is based off a series of protocols Commands and Arguments. This allows the developer to pass these into an Executable object and then run a process.
### Executable
The simplest example of an executable that can be run as a script could be:
```swift
Executable(command: "ls").process.execute()
```
This will create an executable with the shell command ls, which lists all the items in a directory. From here, we take the generated process and call the execute method. 

We are also able to generate an executable with additional arguments, so if we wanted to pass in the argument flag '-a', we can do this as such:
```swift
Executable(command: "ls", arguments: ["-a"]).process.execute()
```
The executable has two phases of execution: synchronous and asynchronous. These terms in the context of the Executable refer to the delivery of the output. 

Synchronous: refers to the delivery of output at the end of the process. This is delivered in the following output tuple:
```swift
(output: [String], error: [String], exitCode: Int32)
```
Asynchronous: refers to the delivery of output as the process is being executed. This results in a nil value at the end of the process execution.

The default delivery is Synchronous. However, this can be changed by adding the asynchronous parameter value:
```swift
Executable(command: "ls").process.execute(asynchronously: true)
```
A delegate can also be added to find out the beginning and end of a process, should you want to wait for a process to notify your application on completion.
### Chain Executable
The chain executable process is a simple way of processing multiple Executables in order. This process is done, by generating a file, then running the command using the preferred compiler. 
```swift
let chain = [
Executable(command: "cd", arguments: [Path(components: ["", "absolute", "path", "to", "folder"])]),
Executable(command: "mkdir", arguments: ["test"]),
Executable(command: "ls")
]

chain.execute()
```
*(In the example above, the struct Path has been used to as an assistant for creating a url path string. This can generate either relative or absolute paths, simply by putting an empty string at the beginning of the component array.)*

The Chain Executable can be executed in the same way as the standard Executable with both synchronous and asynchronous delivery. This currently works by generating a script file when the chain is executed, then running this script file. Therefore, it also has the ability to determine the preferred compiler language to execute the chained calls. The default for this is Shell (sh).

```swift
let chain = [
Executable(command: "cd", arguments: [Path(components: ["", "absolute", "path", "to", "folder"])]),
Executable(command: "mkdir", arguments: ["test"]),
Executable(command: "ls")
]

chain.execute()
```
```swift
let chain = [
Executable(command: "let", arguments: ["test", "=", "\"hello\""]),
Executable(command: "print(test)")
]

chain.execute(launchPath: "/usr/bin/swift", extension: "swift")
```
### Pipe Executable
A currently limitation of the framework is the ability to chain processes together to pipe output into an input. Although this is possible by setting the standardOutput as the standardInput of the next process, this can sometimes cause the process to run in an indefinite state. Therefore, the PipeExecutable instead makes use of the ChainExecutable funtionality to process these Piping commands into a script file and executing this instead.
```swift
PipeExecutable(command: "ls", arguments: ["|", "head", "-3", "|", "tail", "-1"]).execute()
```
## Contributing
Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.
## Versioning
We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 
## Authors
* **Paul Napier** - [MadApper](https://github.com/madapper)

See also the list of [contributors](https://github.com/madapper/commandline/contributors) who participated in this project.

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
