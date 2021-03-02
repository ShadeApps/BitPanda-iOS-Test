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

        let currencyHelper = CurrencyHelper()

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
            if let double = avgPrice.toDouble(),
               let value = currencyHelper.string(from: double, with: String(fiatSymbol.dropFirst()), locale: Locale.current),
               type != .wallet {
                priceLabel.text = value
            } else {
                priceLabel.text = avgPrice + fiatSymbol
            }

            symbolLabel.text = symbol
        }

        nameLabel.text = attribute.name ?? ""
        otherDetailLabel.text = typeName

        if type == .wallet {
            let balance = attribute.balance ?? ""
            if case .fiatWallets = commodity?.walletType {
                if let double = balance.toDouble(),
                   let value = currencyHelper.string(from: double, with: String(fiatSymbol.dropFirst()), locale: Locale.current) {
                    priceLabel.text = value
                } else {
                    priceLabel.text = balance + fiatSymbol
                }
            } else {
                priceLabel.text = balance + " " + cryptoSymbol
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
