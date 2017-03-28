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
extension NamespaceWrapper where T: UIView {
    public func adhere(toSuperView: UIView) -> T {
        toSuperView.addSubview(wrappedValue)
        return wrappedValue
    }

    @discardableResult
    public func layout(snapKitMaker: (ConstraintMaker) -> Void) -> T {
        wrappedValue.snp.makeConstraints { (make) in
            snapKitMaker(make)
        }
        return wrappedValue
    }

    @discardableResult
    public func config(_ config: (T) -> Void) -> T {
        config(wrappedValue)
        return wrappedValue
    }
}
