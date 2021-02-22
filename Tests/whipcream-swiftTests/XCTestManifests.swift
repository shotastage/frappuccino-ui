import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(whipcream_swiftTests.allTests),
    ]
}
#endif
