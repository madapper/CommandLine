import Foundation

public protocol ChainExecutable {
    var command: Command { get }
    var arguments: [Argument] { get }
    
    var argumentStrings: [String] { get }
    
    var process: Process { get }
    
    init(command: Command, arguments: [Argument])
}

public extension Array where Element: ChainExecutable {
    
    var fileManager: FileManager {
        return FileManager.default
    }
    
    var output: String {
        return map{ $0.argumentStrings.joined(separator: " ")}.joined(separator: ";\n") + ";"
    }
    
    @discardableResult
    func build(scriptName name: String, extension ext: String = "sh", outputPath: String? = nil) -> String {
        let data = output.data(using: .utf8)
        let outputPath = outputPath ?? fileManager.currentDirectoryPath
        let filePath = outputPath + "/" + name + "." + ext
        fileManager.createFile(atPath: filePath, contents: data, attributes: nil)
        return filePath
    }
    
    @discardableResult
    func execute(asynchronously: Bool = false, debug: Bool = false, launchPath: String = "/bin/sh", extension ext: String = "sh", delegate: ExecutableDelegate? = nil) -> ExecutableResponse? {
        let file = build(scriptName: "temp", extension: ext)
        let process = Process.standard
        process.launchPath = launchPath
        process.arguments = [file]
        let execution = process.execute(asynchronously: asynchronously, debug: debug, delegate: delegate)
        try? fileManager.removeItem(atPath: file)
        return execution
    }
}
