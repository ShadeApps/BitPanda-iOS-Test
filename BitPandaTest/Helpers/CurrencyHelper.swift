//
//  CurrencyHelper.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 01.03.2021.
//

import UIKit

struct CurrencyHelper {

    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.maximumIntegerDigits = 4
        formatter.maximumFractionDigits = 3

        formatter.minimumIntegerDigits = 1
        formatter.roundingMode = .floor

        return formatter
    }()

    static func string(from digits: Double) -> String? {
        numberFormatter.string(from: NSNumber(value: digits))
    }

    static func digits(from string: String) -> Double? {
        numberFormatter.number(from: string)?.doubleValue
    }

}
