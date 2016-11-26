import Foundation

public struct Executable {

    public let command: Command
    public let arguments: [String]
    
    public var process: Process {
        let process = Process()
        process.launchPath = command.launchPath
        process.standardOutput = Pipe()
        process.standardError = Pipe()
        return process
    }
    
    public init(command: Command, arguments: [String] = []) {
        self.command = command
        self.arguments = arguments
    }
}

public typealias ExecutableResponse = (output: [String], error: [String], exitCode: Int32)

extension Pipe {
    public var output: [String] {
        return String(data: fileHandleForReading.readDataToEndOfFile(), encoding: .utf8)?.trimmingCharacters(in: .newlines).components(separatedBy: .newlines) ?? []
    }
}

extension Process {
    
    public var outputPipe: Pipe? {
        return standardOutput as? Pipe
    }
    
    public var errorPipe: Pipe? {
        return standardError as? Pipe
    }
    
    public var readabilityHandler: ((FileHandle) -> ()) { return { print(String(data: $0.availableData, encoding: .utf8) ?? "") } }
    
    
    public func execute(asynchronously: Bool = false) -> ExecutableResponse? {
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



