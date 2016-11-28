import Foundation

public protocol ChainExecutable {
    var command: Command { get }
    var arguments: [Argument] { get }
    
    var argumentStrings: [String] { get }
    
    var process: Process { get }
    
    init(command: Command, arguments: [Argument])
}
