import Foundation

// will apply manually to collections, strings etc.
protocol Emptyness { //}: Sendable {
    var isEmpty: Bool { get }
}

/// implement .isEmptyNil for optionals
extension Optional where Wrapped: Emptyness {
    var isEmptyNil: Bool {
        switch self {
        case .none:
            true
        case let .some(wrapped):
            wrapped.isEmpty
        }
    }
    var hasData: Bool { !isEmptyNil }
}

/// implement .isEmptyNil for non-optionals.
/// (emits a warning when used)
extension Emptyness {
    @available(*, deprecated, message: "calling isEmptyNil on a non-optional is safe, but it is recommended you call isEmpty instead")
    var isEmptyNil: Bool { isEmpty }

    @available(*, deprecated, message: "calling hasData on a non-optional is safe, but it is recommended you call !isEmpty instead")
    var hasData: Bool {
        !isEmptyNil
    }
}

/// ------------------------------------------------------------
/// example of adopting Empyness on our own type
struct User: Emptyness {
    let name: String
    let age: Int

    var isEmpty: Bool {
        name.isEmpty
    }
}

/// ---------------- end


// idea: a general thing (generic?) to wrap any method you like in
// a nil check, and you say what is returned if nil.
// e.g.: ((hmm tricksy with e.g. Int!)

//let y = Int("sdf")
//
//let helper = nilDefaulted(Int.init(source:), 0)
//
//func nilDefaulted<A, B>(closure: A -> B, nilDefaultValue: B) {
//
//}
