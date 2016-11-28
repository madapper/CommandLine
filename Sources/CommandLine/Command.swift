import Foundation

public protocol Command: Argument {
    var launchPath:String? { get }
    var prependedArguments: [String] { get }
    var postValue: [String] { get }
    var description: String { get }
}

extension Command {
    var launchPath: String? {
        return nil
    }
    
    var prependedArguments: [String] {
        return []
    }
}
