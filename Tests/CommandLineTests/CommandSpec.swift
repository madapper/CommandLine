import XCTest
@testable import CommandLine

fileprivate struct CommandMockOptionality: Command {
    
    var rawValue: String {
        return "CommandMockRawValue"
    }
    
    var description: String {
        return "CommandMockDescription"
    }
}

struct CommandMockNonOptionality: Command {
    
    var rawValue: String {
        return "CommandMockRawValue"
    }
    
    var description: String {
        return "CommandMockDescription"
    }
    
    public var launchPath: String? {
        return "test/path"
    }
    
    public var prependedArguments: [String] {
        return ["test", "arguments"]
    }
    
    public var postValue: [String] {
        return ["test", "post"]
    }
}

class CommandSpec: XCTestCase {
    func testOptionalProtocol() {
        let sut: Command = CommandMockOptionality()
        XCTAssertEqual(sut.description, "CommandMockDescription")
        XCTAssertEqual(sut.rawValue, "CommandMockRawValue")
        XCTAssertNil(sut.launchPath)
        XCTAssertEqual(sut.prependedArguments, [])
        XCTAssertEqual(sut.postValue, [])
    }
    
    func testNonOptionalProtocol() {
        let sut: Command = CommandMockNonOptionality()
        XCTAssertEqual(sut.description, "CommandMockDescription")
        XCTAssertEqual(sut.rawValue, "CommandMockRawValue")
        XCTAssertNotNil(sut.launchPath)
        XCTAssertEqual(sut.launchPath, "test/path")
        XCTAssertEqual(sut.prependedArguments, ["test", "arguments"])
        XCTAssertEqual(sut.postValue, ["test", "post"])
    }
    
    func testString() {
        let sut = "test"
        XCTAssertEqual(sut.rawValue, "test")
    }
    
    static var allTests : [(String, (CommandSpec) -> () throws -> Void)] {
        return [
            ("testNonOptionalProtocol", testNonOptionalProtocol),
            ("testOptionalProtocol", testOptionalProtocol),
        ]
    }
}
