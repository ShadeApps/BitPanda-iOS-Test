//
//  CurrencyHelper.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 01.03.2021.
//

import UIKit

protocol CurrencyHelpable {
    var numberFormatter: NumberFormatter! { get }
    func string(from digits: Double, with currency: String, locale: Locale) -> String?
}

struct CurrencyHelper: CurrencyHelpable {

    var numberFormatter: NumberFormatter! {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 3
        formatter.maximumIntegerDigits = 4
        formatter.minimumIntegerDigits = 1
        formatter.roundingMode = .floor
        formatter.numberStyle = .currencyAccounting
        return formatter
    }

    func string(from digits: Double, with currency: String, locale: Locale) -> String? {
        numberFormatter.locale = locale
        numberFormatter.currencyCode = currency
        return numberFormatter.string(from: NSNumber(value: digits))
    }

}
