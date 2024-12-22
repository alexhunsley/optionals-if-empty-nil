//
//  SwiftAPIConformance.swift
//  BlogOptionalsTuist
//
//  Created by Alex Hunsley on 22/12/2024.
//

import Foundation

/// Swift API conformance for .isEmptynil and .hasData
extension String: Emptyness {}
extension Array: Emptyness {}
// Array<Int>.SubSequence is alias for ArraySlice
extension ArraySlice: Emptyness {}
extension Set: Emptyness {}
extension Dictionary: Emptyness {}
extension Data: Emptyness {}
extension Range: Emptyness {}
extension ClosedRange: Emptyness {}
extension Substring: Emptyness {}
extension UnsafeBufferPointer: Emptyness {}

// "Extension of protocol 'Collection' cannot have an inheritance clause"
//extension Collection: Emptyness {}

// so we directly conform on protocol.
// the marks Collection as Emptyness (it already implements the method)
protocol Collection: Emptyness {}
protocol Sequence: Emptyness {}
