//
//  HeaderCell.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import UIKit

final class HeaderCell: UITableViewCell {

    @IBOutlet weak var headerLabel: UILabel!

    func layoutWith(text: String) {
        headerLabel.text = text.capitalized
    }
}
