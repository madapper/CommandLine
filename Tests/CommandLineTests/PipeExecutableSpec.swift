import XCTest
@testable import CommandLine

class PipeExecutableSpec: XCTestCase {
    func testProperties() {
        let sut = PipeExecutable(command: "test", arguments: ["|", "another", "test", "|", "piped"])
        XCTAssertEqual(sut.command as! String, "test")
        XCTAssertEqual(sut.arguments as! [String], ["|", "another", "test", "|", "piped"])
        XCTAssertEqual(sut.argumentStrings, ["test", "|", "another", "test", "|", "piped"])
        XCTAssertEqual(sut.executables.count, 1)
        XCTAssertEqual(sut.process.launchPath!, "/usr/bin/env")
    }
    
    func testExecutionSync() {
        let sut = PipeExecutable(command: "test", arguments: ["|", "another", "test", "|", "piped"]).execute()
        XCTAssertNotNil(sut)
        XCTAssertFalse(FileManager.default.fileExists(atPath: "temp.sh"))
    }
    
    func testExecutionAsync() {
        let sut = PipeExecutable(command: "test", arguments: ["|", "another", "test", "|", "piped"]).execute(asynchronously: true)
        XCTAssertNil(sut)
        XCTAssertFalse(FileManager.default.fileExists(atPath: "temp.sh"))
    }
    
    func testExecutionDebug() {
        let sut = PipeExecutable(command: "test", arguments: ["|", "another", "test", "|", "piped"]).execute(debug: true)
        XCTAssertNotNil(sut)
        XCTAssertFalse(FileManager.default.fileExists(atPath: "temp.sh"))
    }
    
    static var allTests : [(String, (PipeExecutableSpec) -> () throws -> Void)] {
        return [
            ("testProperties", testProperties),
            ("testExecutionSync", testExecutionSync),
            ("testExecutionAsync", testExecutionAsync),
            ("testExecutionDebug", testExecutionDebug),
        ]
    }
}
