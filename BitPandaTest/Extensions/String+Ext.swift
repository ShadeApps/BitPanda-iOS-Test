//
//  String+Ext.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 01.03.2021.
//

import Foundation

extension String {
    func toDouble() -> Double? {
        Double(self) ?? 0.0
    }
}
