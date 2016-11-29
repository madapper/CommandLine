import Foundation

public struct Path: Command {
    public let components:[String]
    public var description: String {
        return components.joined(separator: "/").replacingOccurrences(of: " ", with: "\\ ")
    }
    
    public var rawValue: String {
        return description
    }
    
    public init(components: [String]){
        self.components = components
    }
}
