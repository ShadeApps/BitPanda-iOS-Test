//
//  MockHapticHelper.swift
//  BitPandaTestTests
//
//  Created by Sergey Grischyov on 01.03.2021.
//

import Foundation
@testable import BitPandaTest

class MockHapticHelper: HapticHelpable {
    
    var hapticIsInvokedCounter = 0
    
    func vibrate(_ haptic: HapticType) {
        hapticIsInvokedCounter += 1
    }
    
}
