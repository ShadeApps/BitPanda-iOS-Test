//
//  TMBarView+Ext.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import Tabman

typealias DefaultBar = TMBarView<TMHorizontalBarLayout, TopBarButton, BarIndicatorView>

extension DefaultBar {

    func setUp() {
        backgroundView.style = .clear
        layout.contentMode = .fit
        layout.interButtonSpacing = 0
    }

}
