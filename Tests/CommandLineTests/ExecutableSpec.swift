import XCTest
@testable import CommandLine

class ExecutableSpec: XCTestCase {
    func testProperties() {
        let command = CommandMockNonOptionality()
        let sut = Executable(command: command, arguments: ["argument", Path(components: ["path", "other name"])])
        XCTAssertEqual(sut.argumentStrings, ["CommandMockRawValue", "argument", "path/other\\ name", "test", "post"])
        XCTAssertEqual(sut.fullCommandStrings, ["test", "arguments", "CommandMockRawValue", "argument", "path/other\\ name", "test", "post"])
        XCTAssertEqual(sut.process.launchPath, "test/path")
        XCTAssertEqual(sut.process.arguments!, ["test", "arguments", "CommandMockRawValue", "argument", "path/other\\ name", "test", "post"])
    }

    static var allTests : [(String, (ExecutableSpec) -> () throws -> Void)] {
        return [
            ("testProperties", testProperties),
        ]
    }
}

class ProcessSpec: XCTestCase {
    
    func testProcess() {
        let sut = Process.standard
        XCTAssertEqual(sut.launchPath, "/usr/bin/env")
        XCTAssertNotNil(sut.outputPipe)
        XCTAssertNotNil(sut.errorPipe)
        XCTAssertNil(sut.inputPipe)
        XCTAssertTrue(sut.standardOutput is Pipe)
        XCTAssertTrue(sut.standardError is Pipe)
    }
    
    func testExecutionSync() {
        let process = Process.standard
        let sut = process.execute()
        XCTAssertNotNil(sut)
    }
    
    func testExecutionAsync() {
        let process = Process.standard
        let sut = process.execute(asynchronously: true)
        XCTAssertNil(sut)
    }
    
    func testExecutionDebug() {
        let process = Process.standard
        let sut = process.execute(debug: true)
        XCTAssertNotNil(sut)
    }
    
    static var allTests : [(String, (ProcessSpec) -> () throws -> Void)] {
        return [
            ("testProcess", testProcess),
            ("testExecutionSync", testExecutionSync),
            ("testExecutionAsync", testExecutionAsync),
            ("testExecutionDebug", testExecutionDebug),
        ]
    }
}

class PipeSpec: XCTestCase {
    func testProperties() {
        let process = Process.standard
        let sut = process.execute()?.error
        XCTAssertEqual(sut!, [""])
        XCTAssertEqual(process.errorPipe!.output, [""])
        XCTAssertEqual(process.outputPipe!.output, [""])
    }
    
    static var allTests : [(String, (PipeSpec) -> () throws -> Void)] {
        return [
            ("testProperties", testProperties),
        ]
    }
}
