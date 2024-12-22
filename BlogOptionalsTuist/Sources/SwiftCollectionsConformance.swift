//
//  SwiftCollectionsConformance.swift
//  BlogOptionalsTuist
//
//  Created by Alex Hunsley on 22/12/2024.
//

import Foundation

// this needs thought.
// In SPM, we'd have to directly import swift-collections to see it, can't
// depend on

// NB there are two ways one can import OrderedDictionary from swift-collections!
// but I think just OrderedCollections should do it.
#if canImport(Collections) || canImport(OrderedCollections)
#warning("Can import orderedCollections.")
//#if canImport(OrderedCollections)
import OrderedCollections
extension OrderedDictionary: Emptyness {}
#else
#warning("Can't import orderedCollections!")
#endif

//let orderedDict = OrderedDictionary<Int, String>()

