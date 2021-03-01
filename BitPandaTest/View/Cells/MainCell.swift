//
//  MainCell.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import UIKit

final class MainCell: UITableViewCell {

    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var otherDetailLabel: UILabel!

    func layoutWith(_ commodity: Commodity?, type: GroupType) {
        guard let attribute = commodity?.attributes else { return }

        let typeName = attribute.assetTypeName ?? ""
        let groupName = attribute.assetGroupName ?? ""
        let cryptoSymbol = attribute.cryptocoinSymbol ?? ""
        let symbol = attribute.symbol ?? ""
        let avgPrice = attribute.avgPrice ?? ""
        let isDefault = attribute.isDefault ?? false
        let fiatSymbol = " \(attribute.fiatSymbol ?? Constants.defaultCurrency)"

        if typeName.isEmpty, groupName.isEmpty, type == .asset {
            // fiat
            priceLabel.text = attribute.toEurRate ?? ""
            symbolLabel.text = symbol + " \(Constants.toEUR)"
        } else {
            priceLabel.text = avgPrice + fiatSymbol
            symbolLabel.text = symbol
        }

        nameLabel.text = attribute.name ?? ""
        otherDetailLabel.text = typeName

        if type == .wallet {
            if case .fiatWallets = commodity?.walletType {
                priceLabel.text = (attribute.balance ?? "") + fiatSymbol
            } else {
                priceLabel.text = (attribute.balance ?? "") + " " + cryptoSymbol
            }

            otherDetailLabel.text = isDefault ? Constants.defaultNotion : ""
            topImageView.image = Image.list_icon()!
        } else {
            let source = ImageProvider.imagesFor(symbol: symbol)
            topImageView.image = traitCollection.isDarkMode ? source.darkImage : source.image
        }
    }

}

private extension MainCell {

    enum Constants {
        static let toEUR = "to EUR"
        static let defaultCurrency = "EUR"
        static let defaultNotion = "📥 Default"
    }

}
