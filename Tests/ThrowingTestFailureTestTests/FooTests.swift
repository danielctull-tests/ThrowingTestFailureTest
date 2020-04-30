
import XCTest
import ThrowingTestFailureTest

func getString() throws -> String {
    struct StringFailure: Error {}
    throw StringFailure()
}

final class FooTests: XCTestCase {

    func testFoo() throws {
        let foo = try Foo(string: "hello")
        XCTAssertEqual(foo.string, "hello")
    }

    func testFooWithSetup() throws {
        let string = try getString()
        let foo = try Foo(string: string)
        XCTAssertEqual(foo.string, "hello")
    }
}
