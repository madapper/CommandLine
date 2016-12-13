import XCTest
@testable import CommandLine

class PathSpec: XCTestCase {
    func testProperties() {
        let sut = Path(components: ["test", "path name"])
        XCTAssertEqual(sut.description, "test/path\\ name")
        XCTAssertEqual(sut.rawValue, "test/path\\ name")
        XCTAssertEqual(sut.components, ["test", "path name"])
    }
    
    static var allTests : [(String, (PathSpec) -> () throws -> Void)] {
        return [
            ("testProperties", testProperties),
        ]
    }
}
