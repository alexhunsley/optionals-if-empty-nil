import Foundation
import Testing
@testable import BlogOptionalsTuist

final class BlogOptionalsTuistTests {

//    static let nilData: Data? = .init()
//    static let nilString: String? = .init()
//    static let nilStringArray: [String]? = .init()

    // MARK: Custom type conformance

    @Test
    func test_whenMakeCustomStructNil_returnsEmptyTrue() {
        let userNil: User? = nil
        #expect(userNil.isEmptyNil == true)
        #expect(userNil.hasData == false)
    }

    @Test
    func test_whenMakeCustomNonEmpty_returnsEmptyFalse() {
        let userNotNil: User? = User(name: "alex", age: 30)
        #expect(userNotNil.isEmptyNil == false)
        #expect(userNotNil.hasData == true)
    }

    @Test
    func test_whenMakeCustomEmpty_returnsEmptyTrue() {
        let userNotNilEmpty: User? = User(name: "", age: 30)

        #expect(userNotNilEmpty.isEmptyNil == true)
        #expect(userNotNilEmpty.hasData == false)
    }

    // MARK: Swift API conformance

    @Test
    func test_whenMakeSwiftAPINil_returnEmptyTrue() {
        let dataNil: Data? = nil
        #expect(dataNil.isEmptyNil == true)
        #expect(dataNil.hasData == false)

        let stringNil: String? = nil
        #expect(stringNil.isEmptyNil == true)
        #expect(stringNil.hasData == false)

        let arrayNil: [String]? = nil
        #expect(arrayNil.isEmptyNil == true)
        #expect(arrayNil.hasData == false)
    }

    @Test
    func test_whenMakeSwiftAPIEmpty_returnEmptyTrue() {
        let dataEmpty: Data? = Data()
        #expect(dataEmpty.isEmptyNil == true)
        #expect(dataEmpty.hasData == false)

        let stringEmpty: String? = ""
        #expect(stringEmpty.isEmptyNil == true)
        #expect(stringEmpty.hasData == false)

        let arrayEmpty: Array? = []
        #expect(arrayEmpty.isEmptyNil == true)
        #expect(arrayEmpty.hasData == false)
    }

    @Test
    func test_whenMakeSwiftAPINonEmpty_returnEmptyFalse() {
        let dataEmpty: Data? = "Some data".data(using: .utf8)
        #expect(dataEmpty.isEmptyNil == false)
        #expect(dataEmpty.hasData == true)

        let stringEmpty: String? = "hello"
        #expect(stringEmpty.isEmptyNil == false)
        #expect(stringEmpty.hasData == true)

        let arrayEmpty: Array? = ["hi"]
        #expect(arrayEmpty.isEmptyNil == false)
        #expect(arrayEmpty.hasData == true)
    }

//    // we can only list one items here because of Xcode bug:
//    // "Thread 2: Fatal error: Internal inconsistency: No test reporter for test case argumentIDs:"
//    // @see https://forums.swift.org/t/fatal-error-internal-inconsistency-no-test-reporter-for-test-case-argumentids/75666/3
//    @Test("Non-optional Swift API instances that are .isEmpty == true",
//          arguments: [
//            Data(),
////            String(),
////            [String]()
//          ] as! [any Emptyness]) // must be 'any Emptyness'
//    func test_whenMakeSwiftAPINonNilEmpty_returnEmptyTrue(value: Emptyness) {
//        #expect(value.isEmptyNil == true)
//        #expect(value.hasData == false)
//    }
//
//    @Test("Optional Swift API instances that are .isEmpty == true",
//          arguments: [
//            BlogOptionalsTuistTests.nilData
////            BlogOptionalsTuistTests.nilString,
////            BlogOptionalsTuistTests.nilStringArray
//            //        "By the Lake",
////        "Camping in the Woods"
//    ])
//    func test_whenMakeSwiftAPINil_returnEmptyTrue(value: Emptyness) {
//
////        let dataEmpty: Data? = "Some data".data(using: .utf8)
////        @available(*, deprecated)   // doesn't stop warning
//        #expect(value.isEmptyNil == true)
////        @available(*, deprecated)
//        #expect(value.hasData == false)
//    }
}
