import Foundation

public protocol CompletionDeterminable: Command {
    var isComplete: Bool { get }
    static var all: [CompletionDeterminable] { get }
    static var completed: [CompletionDeterminable] { get }
    static var remaining: [CompletionDeterminable] { get }
}

extension CompletionDeterminable {
    public static var completed: [CompletionDeterminable] {
        return all.filter{ $0.isComplete }
    }
    
    public static var remaining: [CompletionDeterminable] {
        return all.filter{ !$0.isComplete }
    }
}
