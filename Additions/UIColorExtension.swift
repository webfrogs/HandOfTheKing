//
//  UIColorExtension.swift
//  HandOfTheKing
//
//  Created by Carl on 22/3/2017.
//  Copyright © 2017 nswebfrog. All rights reserved.
//

import UIKit

extension UIColor: NamespaceWrappable { }
extension NamespaceWrapper where T: UIColor {
    public static func color(hex: String) -> UIColor {
        let defaultColor = UIColor.clear

        var hexColorText = hex
            .lowercased()
            .trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)

        switch hexColorText {
        case let text where text.hasPrefix("0x"):
            hexColorText = text.hand.substring(from: 2)

        case let text where text.hasPrefix("#"):
            hexColorText = text.hand.substring(from: 1)
        default:
            break
        }

        guard hexColorText.hand.match(regex: "[0-9a-f]{6}") else {
            return defaultColor
        }


        var r: UInt32 = 0
        var g: UInt32 = 0
        var b: UInt32 = 0

        guard Scanner(string: hexColorText.hand.substring(with: 0..<2)).scanHexInt32(&r)
        , Scanner(string: hexColorText.hand.substring(with: 2..<4)).scanHexInt32(&g)
        , Scanner(string: hexColorText.hand.substring(with: 4..<6)).scanHexInt32(&b)
        else {
            return defaultColor
        }

        return UIColor(red: CGFloat(r) / 255.0
            , green: CGFloat(g) / 255.0
            , blue: CGFloat(b) / 255.0
            , alpha: 1.0)
    }
}
