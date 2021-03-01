//
//  ImageConverter.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 01.03.2021.
//

import Foundation
import UIKit

// Using it instead of SVG assets that are not natively supported on iOS before iOS 13 :(
typealias DarkLightImage = (image: UIImage, darkImage: UIImage)

struct ImageProvider {

    static func imagesFor(symbol: String) -> DarkLightImage {
        guard !symbol.isEmpty else {
            return (image: UIImage(), darkImage: UIImage())
        }

        var image = UIImage()
        var darkImage = UIImage()

        if let light = UIImage(named: symbol.lowercased()) {
            image = light
        }

        if let dark = UIImage(named: "dark_\(symbol.lowercased())") {
            darkImage = dark
        }

        return (image: image, darkImage: darkImage)
    }

}
