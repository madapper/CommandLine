import XCTest
@testable import CommandLine

fileprivate struct ChainExecutableMock : ChainExecutable {
    let command: Command
    let arguments: [Argument]
    
    var argumentStrings: [String] {
        return [command.rawValue] + arguments.map{ $0.rawValue } + command.postValue
    }
    
    let process: Process = Process.standard
    
    init(command: Command, arguments: [Argument]) {
        self.command = command
        self.arguments = arguments
    }
}

class ChainExecutableSpec: XCTestCase {
    func testProperties() {
        let sut: ChainExecutable = ChainExecutableMock(command: "test", arguments: ["argument"])
        XCTAssertEqual(sut.command as! String, "test")
        XCTAssertEqual(sut.arguments as! [String], ["argument"])
        XCTAssertEqual(sut.argumentStrings, ["test", "argument"])
    }
    
    func testArrayChainExecutableProperties() {
        let sut = [ChainExecutableMock(command: "start", arguments: ["argument"]), ChainExecutableMock(command: "end", arguments: ["argument"])]
        XCTAssertEqual(sut.fileManager, FileManager.default)
        XCTAssertEqual(sut.output, "start argument;\nend argument;")
    }
    
    func testArrayChainExecutableBuildDefaults() {
        let fileManager = FileManager.default
        let sut = [ChainExecutableMock(command: "start", arguments: ["argument"]), ChainExecutableMock(command: "end", arguments: ["argument"])]
        sut.build(scriptName: "test")
        XCTAssertTrue(fileManager.fileExists(atPath: "test.sh"))
        
        let data = try! Data(contentsOf: URL(fileURLWithPath: "test.sh"))
        let string = String(data: data, encoding: .utf8)!
        XCTAssertEqual(string, "start argument;\nend argument;")
        
        try? fileManager.removeItem(atPath: "test.sh")
    }
    
    func testArrayChainExecutableBuildFileType() {
        let fileManager = FileManager.default
        let sut = [ChainExecutableMock(command: "start", arguments: ["argument"]), ChainExecutableMock(command: "end", arguments: ["argument"])]
        sut.build(scriptName: "test", extension: "swift")
        XCTAssertTrue(fileManager.fileExists(atPath: "test.swift"))
        
        let data = try! Data(contentsOf: URL(fileURLWithPath: "test.swift"))
        let string = String(data: data, encoding: .utf8)!
        XCTAssertEqual(string, "start argument;\nend argument;")
        
        try? fileManager.removeItem(atPath: "test.swift")
    }
    
    func testArrayChainExecutableBuildOutputPath() {
        let fileManager = FileManager.default
        print(fileManager.currentDirectoryPath)
        try? fileManager.createDirectory(atPath: "temp", withIntermediateDirectories: false, attributes: nil)
        let sut = [ChainExecutableMock(command: "start", arguments: ["argument"]), ChainExecutableMock(command: "end", arguments: ["argument"])]
        sut.build(scriptName: "test", extension: "swift", outputPath: "temp")
        XCTAssertTrue(fileManager.fileExists(atPath: "temp/test.swift"))
        
        let data = try! Data(contentsOf: URL(fileURLWithPath: "temp/test.swift"))
        let string = String(data: data, encoding: .utf8)!
        XCTAssertEqual(string, "start argument;\nend argument;")
        
        try? fileManager.removeItem(atPath: "temp/test.swift")
        try? fileManager.removeItem(atPath: "temp")
    }
    
    func testExecutionSync() {
        let sut = [ChainExecutableMock(command: "start", arguments: ["argument"]), ChainExecutableMock(command: "end", arguments: ["argument"])].execute()
        XCTAssertNotNil(sut)
        XCTAssertFalse(FileManager.default.fileExists(atPath: "temp.sh"))
    }
    
    func testExecutionAsync() {
        let sut = [ChainExecutableMock(command: "start", arguments: ["argument"]), ChainExecutableMock(command: "end", arguments: ["argument"])].execute(asynchronously: true)
        XCTAssertNil(sut)
        XCTAssertFalse(FileManager.default.fileExists(atPath: "temp.sh"))
    }
    
    func testExecutionDebug() {
        let sut = [ChainExecutableMock(command: "start", arguments: ["argument"]), ChainExecutableMock(command: "end", arguments: ["argument"])].execute(debug: true)
        XCTAssertNotNil(sut)
        XCTAssertFalse(FileManager.default.fileExists(atPath: "temp.sh"))
    }
    
    static var allTests : [(String, (ChainExecutableSpec) -> () throws -> Void)] {
        return [
            ("testProperties", testProperties),
            ("testArrayChainExecutableProperties", testArrayChainExecutableProperties),
            ("testArrayChainExecutableBuildDefaults", testArrayChainExecutableBuildDefaults),
            ("testArrayChainExecutableBuildFileType", testArrayChainExecutableBuildFileType),
            ("testArrayChainExecutableBuildOutputPath", testArrayChainExecutableBuildOutputPath),
            ("testExecutionSync", testExecutionSync),
            ("testExecutionAsync", testExecutionAsync),
            ("testExecutionDebug", testExecutionDebug),
        ]
    }
}
