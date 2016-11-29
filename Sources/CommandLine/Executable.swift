import Foundation

public protocol ExecutableDelegate {
    func didBeginProcess(process: Process)
    func didEndProcess(process: Process)
}

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
    public func execute(asynchronously: Bool = false, debug: Bool = false, delegate: ExecutableDelegate? = nil) -> ExecutableResponse? {
        if let launchPath = launchPath, debug {
            let args = arguments?.joined(separator: " ") ?? ""
            print("Executing: \(launchPath) \(args)")
        }
        if asynchronously {
            return executeAsync(delegate: delegate)
        }else {
            return executeSync(delegate: delegate)
        }
    }
    
    private func executeSync(delegate: ExecutableDelegate? = nil) -> ExecutableResponse {
        launch()
        delegate?.didBeginProcess(process: self)
        waitUntilExit()
        delegate?.didEndProcess(process: self)
        return ExecutableResponse(output: outputPipe?.output ?? [], error: errorPipe?.output ?? [], exitCode: terminationStatus)
    }
    
    private func executeAsync(delegate: ExecutableDelegate? = nil) -> ExecutableResponse? {
        outputPipe?.fileHandleForReading.readabilityHandler = readabilityHandler
        launch()
        delegate?.didBeginProcess(process: self)
        waitUntilExit()
        delegate?.didEndProcess(process: self)
        return nil
    }
}



