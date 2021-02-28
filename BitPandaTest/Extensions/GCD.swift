//
//  GCD.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import Foundation

func doAfter(_ delay: TimeInterval? = nil, _ closure: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + (delay ?? 0), execute: closure)
}
