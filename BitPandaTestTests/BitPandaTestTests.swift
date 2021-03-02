//
//  BitPandaTestTests.swift
//  BitPandaTestTests
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import XCTest
@testable import BitPandaTest

class BitPandaTestTests: XCTestCase {

    let hapticHelper = MockHapticHelper()
    let currencyHelper = MockCurrencyHelper()
    
    func testLightHaptic() {
        hapticHelper.vibrate(.light)
        
        XCTAssertEqual(hapticHelper.hapticIsInvokedCounter, 1)
    }
    
    func testMediumHaptic() {
        hapticHelper.vibrate(.medium)
        
        XCTAssertEqual(hapticHelper.hapticIsInvokedCounter, 1)
    }
    
    func testHeavyHaptic() {
        hapticHelper.vibrate(.heavy)
        
        XCTAssertEqual(hapticHelper.hapticIsInvokedCounter, 1)
    }
    
    func testErrorHaptic() {
        hapticHelper.vibrate(.error)
        
        XCTAssertEqual(hapticHelper.hapticIsInvokedCounter, 1)
    }
    
    func testWarningHaptic() {
        hapticHelper.vibrate(.warning)
        
        XCTAssertEqual(hapticHelper.hapticIsInvokedCounter, 1)
    }
    
    func testSuccessHaptic() {
        hapticHelper.vibrate(.success)
        
        XCTAssertEqual(hapticHelper.hapticIsInvokedCounter, 1)
    }
    
    func testSelectionChangedHaptic() {
        hapticHelper.vibrate(.selectionChanged)
        
        XCTAssertEqual(hapticHelper.hapticIsInvokedCounter, 1)
    }
    
    func testStringToDouble() {
        XCTAssertEqual(Constants.value.toDouble(), 70.64)
    }
    
    func testCurrencyHelperIsInvoked() {
        _ = currencyHelper.string(from: Constants.doubleValue, with: Constants.currency, locale: Constants.locale)
        XCTAssertEqual(currencyHelper.helperIsInvokedCounter, 1)
    }
    
    func testCurrencyHelperFormat() {
        let result = currencyHelper.string(from: Constants.doubleValue, with: Constants.currency, locale: Constants.locale)
        XCTAssertEqual(result, "$70.64")
    }

}

private extension BitPandaTestTests {
    
    enum Constants {
        static let value = "70.64"
        static let doubleValue = 70.64
        static let currency = "USD"
        static let locale = Locale(identifier: "en_US")
    }
    
}
