import Foundation

public struct Executable {
    
    public let command: Command
    public let arguments: [Argument]
    
    public var argumentStrings: [String] {
        return [command.rawValue] + arguments.map{ $0.rawValue } + command.postValue
    }
    
    public var fullCommandStrings: [String] {
        return command.prependedArguments + argumentStrings
    }
    
    public var process: Process {
        let process = Process.standard
        if let launchPath = command.launchPath {
            process.launchPath = launchPath
        }
        process.arguments = fullCommandStrings
        return process
    }
    
    public init(command: Command, arguments: [Argument] = []) {
        self.command = command
        self.arguments = arguments
    }
}

extension Executable: ChainExecutable {}

var processCount = 0

public extension Array where Element: ChainExecutable {
    
    @discardableResult
    func execute(asynchronously: Bool = false, debug: Bool = false) -> ExecutableResponse? {
        let fileManager = FileManager.default
        let fileName = "temp.sh"
        let string = map{ $0.argumentStrings.joined(separator: " ")}.joined(separator: ";")
        let data = string.data(using: .utf8)
        let documentsPath = fileManager.currentDirectoryPath
        let filePath = documentsPath + "/" + fileName
        fileManager.createFile(atPath: filePath, contents: data, attributes: nil)
        let process = Process.standard
        process.launchPath = "/bin/sh"
        process.arguments = [filePath]
        let output = process.execute(asynchronously: asynchronously, debug: debug)
        print(filePath)
        try? fileManager.removeItem(atPath: filePath)
        return output
    }
}

public typealias ExecutableResponse = (output: [String], error: [String], exitCode: Int32)

extension Pipe {
    public var output: [String] {
        return String(data: fileHandleForReading.readDataToEndOfFile(), encoding: .utf8)?.trimmingCharacters(in: .newlines).components(separatedBy: .newlines) ?? []
    }
}

extension Process {
    
    public static var standard: Process {
        let process = Process()
        process.launchPath = "/usr/bin/env"
        process.standardOutput = Pipe()
        process.standardError = Pipe()
        return process
    }
    
    private var outputPipe: Pipe? {
        return standardOutput as? Pipe
    }
    
    private var errorPipe: Pipe? {
        return standardError as? Pipe
    }
    
    private var readabilityHandler: ((FileHandle) -> ()) { return { print(String(data: $0.availableData, encoding: .utf8) ?? "") } }
    
    @discardableResult
    public func execute(asynchronously: Bool = false, debug: Bool = false) -> ExecutableResponse? {
        if let launchPath = launchPath, debug {
            let args = arguments?.joined(separator: " ") ?? ""
            print("Executing: \(launchPath) \(args)")
        }
        if asynchronously {
            return executeAsync()
        }else {
            return executeSync()
        }
    }
    
    private func executeSync() -> ExecutableResponse {
        launch()
        waitUntilExit()
        return ExecutableResponse(output: outputPipe?.output ?? [], error: errorPipe?.output ?? [], exitCode: terminationStatus)
    }
    
    private func executeAsync() -> ExecutableResponse? {
        outputPipe?.fileHandleForReading.readabilityHandler = readabilityHandler
        launch()
        waitUntilExit()
        return nil
    }
}



