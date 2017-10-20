//
//  Namespace.swift
//  HandOfTheKing
//
//  Created by Carl on 22/3/2017.
//  Copyright © 2017 nswebfrog. All rights reserved.
//


public protocol NamespaceWrappable {
    associatedtype WrapperType
    var hand: WrapperType { get }
    static var hand: WrapperType.Type { get }
}

public extension NamespaceWrappable {
    var hand: NamespaceWrapper<Self> {
        return NamespaceWrapper(value: self)
    }

    static var hand: NamespaceWrapper<Self>.Type {
        return NamespaceWrapper.self
    }
}

public struct NamespaceWrapper<T> {
    public let wrappedValue: T
    public init(value: T) {
        self.wrappedValue = value
    }
}
