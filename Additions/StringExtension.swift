//
//  StringExtension.swift
//  HandOfTheKing
//
//  Created by Carl on 22/3/2017.
//  Copyright © 2017 nswebfrog. All rights reserved.
//

import Foundation


extension String: NamespaceWrappable { }
extension NamespaceWrapper where T == String {
    public func trimWhitespaceAndNewline() -> String {
        return wrappedValue.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    public func match(regex: String) -> Bool {
        let pred = NSPredicate(format: "SELF MATCHES %@", argumentArray:[regex])
        return pred.evaluate(with: wrappedValue)
    }

    public func index(offsetFromStart: Int) -> String.Index {
        return wrappedValue.index(wrappedValue.startIndex, offsetBy: offsetFromStart)
    }

    public func substring(from: Int) -> String {
        return String(wrappedValue[index(offsetFromStart: from)...])
    }

    public func substring(to: Int) -> String {
        return String(wrappedValue[..<index(offsetFromStart: to)])
    }

    public func substring(with: Range<Int>) -> String {
        let startIndex = index(offsetFromStart: with.lowerBound)
        let endIndex = index(offsetFromStart: with.upperBound)
        return String(wrappedValue[startIndex..<endIndex])
    }

    public func substring(with: CountableClosedRange<Int>) -> String {
        let startIndex = index(offsetFromStart: with.lowerBound)
        let endIndex = index(offsetFromStart: with.upperBound)
        return String(wrappedValue[startIndex...endIndex])
    }
    
    public func distanceFromStart(to: String.Index) -> String.IndexDistance {
        return wrappedValue.distance(from: wrappedValue.startIndex, to: to)
    }
}

extension Substring: NamespaceWrappable {}
extension NamespaceWrapper where T == Substring {
    public func match(regex: String) -> Bool {
        let pred = NSPredicate(format: "SELF MATCHES %@", argumentArray:[regex])
        return pred.evaluate(with: wrappedValue)
    }

    public func index(offsetFromStart: Int) -> String.Index {
        return wrappedValue.index(wrappedValue.startIndex, offsetBy: offsetFromStart)
    }

    public func distanceFromStart(to: String.Index) -> String.IndexDistance {
        return wrappedValue.distance(from: wrappedValue.startIndex, to: to)
    }
}
