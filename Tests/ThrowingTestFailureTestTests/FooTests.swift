
import XCTest
import ThrowingTestFailureTest

func getString() throws -> String {
    struct StringFailure: Error {}
    throw StringFailure()
}

final class FooTests: XCTestCase {

    func testFoo() throws {
        let foo = try Foo(throwing: "hello")
        XCTAssertEqual(foo.string, "hello")
    }

    func testFooWithSetup() throws {
        let string = try getString()
        let foo = try Foo(throwing: string)
        XCTAssertEqual(foo.string, "hello")
    }

    func testUnwrap() throws {
        let foo = try XCTUnwrap(Foo(optional: "hello"))
        XCTAssertEqual(foo.string, "hello")
    }
}



