//
//  UITraitCollection+Ext.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 01.03.2021.
//

import UIKit

extension UITraitCollection {
    var isDarkMode: Bool {
        if #available(iOS 12.0, *) {
            return userInterfaceStyle == .dark
        } else {
            return false
        }
    }
}
