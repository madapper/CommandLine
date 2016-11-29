import Foundation

public struct Path {
    public let components:[String]
    public var description: String {
        return components.joined(separator: "/").replacingOccurrences(of: " ", with: "\\ ")
    }
    public init(components: [String]){
        self.components = components
    }
}
