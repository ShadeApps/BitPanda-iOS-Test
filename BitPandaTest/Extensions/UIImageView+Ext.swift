//
//  UIImageView+Ext.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import Kingfisher

extension UIImageView {
    func loadImage(url: URL, placeholder: UIImage? = nil) {
        kf.setImage(with: url, placeholder: placeholder)
    }
}
