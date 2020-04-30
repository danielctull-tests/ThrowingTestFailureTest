
public struct Foo {
    public let string: String

    public init(throwing: String) throws {
        struct FooFailure: Error {}
        throw FooFailure()
    }

    public init?(optional: String) {
        return nil
    }
}
