//
//  ListViewModel.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import Foundation

enum GroupType {
    case asset
    case wallet
}

enum AssetType: String, CaseIterable {
    case cryptocoins
    case commodities
    case fiats
}

enum WalletType: String, CaseIterable {
    case wallets
    case commodityWallets = "commodity Wallets"
    case fiatWallets = "fiat Wallets"
}

final class ListViewModel {
    private let data: ResponseData?
    private var groupType = GroupType.asset
    private var items = [Container]()

    // MARK: - Lifecycle
    init(data: ResponseData, groupType: GroupType) {
        self.data = data
        self.groupType = groupType
        groupData()
    }
}

// MARK: - Group Data
private extension ListViewModel {

    func groupData() {
        guard let globalItem = data?.items else {
            return
        }

        switch groupType {
        case .asset:
            var cryptoContainer = Container()
            for var com in globalItem.cryptocoins ?? [] {
                addItem(&com, withType: AssetType.allCases[0], to: &cryptoContainer)
            }
            addContainer(cryptoContainer)

            var comContainer = Container()
            for var com in globalItem.commodities ?? [] {
                addItem(&com, withType: AssetType.allCases[1], to: &comContainer)
            }
            addContainer(comContainer)

            var fiatContainer = Container()
            for var com in globalItem.fiats ?? [] where com.attributes.isSome && com.attributes!.hasWallets {
                addItem(&com, withType: AssetType.allCases[2], to: &fiatContainer)
            }
            addContainer(fiatContainer)
        case .wallet:
            var walletContainer = Container()
            for var com in globalItem.wallets ?? [] where com.attributes.isSome && !com.attributes!.deleted {
                addItem(&com, withType: WalletType.allCases[0], to: &walletContainer)
            }
            addContainer(walletContainer)

            var comContainer = Container()
            for var com in globalItem.commodityWallets ?? [] where com.attributes.isSome && !com.attributes!.deleted {
                addItem(&com, withType: WalletType.allCases[1], to: &comContainer)
            }
            addContainer(comContainer)

            var fiatContainer = Container()
            for var com in globalItem.fiatwallets ?? [] where com.attributes.isSome && !com.attributes!.deleted {
                addItem(&com, withType: WalletType.allCases[2], to: &fiatContainer)
            }
            addContainer(fiatContainer)
        }
    }

    func addItem(_ item: inout Commodity, withType: AssetType, to newContainer: inout Container) {
        item.assetType = withType
        newContainer.items.append(item)
        newContainer.type = withType.rawValue
    }

    func addItem(_ item: inout Commodity, withType: WalletType, to newContainer: inout Container) {
        item.walletType = withType
        newContainer.items.append(item)
        newContainer.type = withType.rawValue
    }

    func addContainer(_ container: Container) {
        guard !container.items.isEmpty else {
            return
        }
        items.append(container)
    }
}

extension ListViewModel {

    var numberOfSections: Int {
        sections.count
    }

    func numberOfItems(inSection section: Int) -> Int {
        sectionAtIndex(section).items.count + Constants.extraCount
    }

    var sections: [Container] {
        items
    }

    func sectionAtIndex(_ index: Int) -> Container {
        items[index]
    }

    func itemAtIndex(section: Int, index: Int) -> Commodity? {
        items[safe: section]?.items[safe: index]
    }

}

private extension ListViewModel {

    enum Constants {
        static let extraCount = 2
    }

}
