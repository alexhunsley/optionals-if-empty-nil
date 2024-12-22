//
//  SwiftCollectionsConformance.swift
//  BlogOptionalsTuist
//
//  Created by Alex Hunsley on 22/12/2024.
//

import Foundation

// NB there are two ways one can import OrderedDictionary from swift-collections!
// but I think just OrderedCollections should do it.
//#if canImport(Collections) || canImport(OrderedCollections)
#if canImport(OrderedCollections)
import Collections
extension OrderedDictionary: Emptyness {}
#endif
