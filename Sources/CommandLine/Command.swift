import Foundation

public protocol Command: Argument {
    var launchPath:String? { get }
    var prependedArguments: [String] { get }
    var postValue: [String] { get }
    var description: String { get }
}

extension Command {
    public var launchPath: String? {
        return nil
    }
    
    public var prependedArguments: [String] {
        return []
    }
    
    public var postValue: [String] {
        return []
    }
}

extension String: Command {
    public var rawValue: String {
        return self
    }
}
