//
//  Namespace.swift
//  HandOfTheKing
//
//  Created by Carl on 22/3/2017.
//  Copyright © 2017 nswebfrog. All rights reserved.
//


public protocol NamespaceWrappable {
    associatedtype WrapperType
    var hk: WrapperType { get }
    static var hk: WrapperType.Type { get }
}

public extension NamespaceWrappable {
    var hk: NamespaceWrapper<Self> {
        return NamespaceWrapper(value: self)
    }

    static var hk: NamespaceWrapper<Self>.Type {
        return NamespaceWrapper.self
    }
}


public protocol TypeWrapperProtocol {
    associatedtype WrappedType
    var wrappedValue: WrappedType { get }
    init(value: WrappedType)
}

public struct NamespaceWrapper<T>: TypeWrapperProtocol {
    public let wrappedValue: T
    public init(value: T) {
        self.wrappedValue = value
    }
}
