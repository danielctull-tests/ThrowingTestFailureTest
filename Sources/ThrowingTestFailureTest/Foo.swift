
public struct Foo {
    public let string: String
    public init(string: String) throws {
        struct FooFailure: Error {}
        throw FooFailure()
    }
}
