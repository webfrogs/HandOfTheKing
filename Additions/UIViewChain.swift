//
//  UIViewChain.swift
//  HandOfTheKing
//
//  Created by Carl on 22/3/2017.
//  Copyright © 2017 nswebfrog. All rights reserved.
//

import UIKit
import SnapKit

extension UIView: NamespaceWrappable { }
extension TypeWrapperProtocol where WrappedType: UIView {
    public func adhere(toSuperView: UIView) -> WrappedType {
        toSuperView.addSubview(wrappedValue)
        return wrappedValue
    }

    @discardableResult
    public func layout(snapKitMaker: (ConstraintMaker) -> Void) -> WrappedType {
        wrappedValue.snp.makeConstraints { (make) in
            snapKitMaker(make)
        }
        return wrappedValue
    }

    @discardableResult
    public func config(_ config: (WrappedType) -> Void) -> WrappedType {
        config(wrappedValue)
        return wrappedValue
    }
}
