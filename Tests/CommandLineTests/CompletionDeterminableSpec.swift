import XCTest
@testable import CommandLine

fileprivate struct CompletionDeterminableMock: CompletionDeterminable {
    
    var rawValue: String {
        return "CompletionDeterminableMock"
    }
    
    var description: String {
        return "CompletionDeterminableMock"
    }
    
    var isComplete: Bool {
        return true
    }
    
    static var all: [CompletionDeterminable] {
        return [CompletionDeterminableMock(), CompletionDeterminableMock()]
    }
}

class CompletionDeterminableSpec: XCTestCase {
    func testProperties() {
        let sut: CompletionDeterminable = CompletionDeterminableMock()
        XCTAssertTrue(sut.isComplete)
        XCTAssertEqual(CompletionDeterminableMock.all.count, 2)
        XCTAssertEqual(CompletionDeterminableMock.completed.count, 2)
        XCTAssertEqual(CompletionDeterminableMock.remaining.count, 0)
    }
    
    static var allTests : [(String, (CompletionDeterminableSpec) -> () throws -> Void)] {
        return [
            ("testProperties", testProperties),
        ]
    }
}
