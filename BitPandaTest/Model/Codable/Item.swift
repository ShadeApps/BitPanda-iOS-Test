//
//	Item.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import Foundation

struct Item: Codable {

	let commodities: [Commodity]?
	let commodityWallets: [Commodity]?
	let cryptocoins: [Commodity]?
	let fiats: [Commodity]?
	let fiatwallets: [Commodity]?
	let wallets: [Commodity]?

	enum CodingKeys: String, CodingKey {
		case commodities = "commodities"
		case commodityWallets = "commodity_wallets"
		case cryptocoins = "cryptocoins"
		case fiats = "fiats"
		case fiatwallets = "fiatwallets"
		case wallets = "wallets"
	}

	init(from decoder: Decoder) throws {
		let values = try? decoder.container(keyedBy: CodingKeys.self)
		commodities = try? values?.decodeIfPresent([Commodity].self, forKey: .commodities)
		commodityWallets = try? values?.decodeIfPresent([Commodity].self, forKey: .commodityWallets)
		cryptocoins = try? values?.decodeIfPresent([Commodity].self, forKey: .cryptocoins)
		fiats = try? values?.decodeIfPresent([Commodity].self, forKey: .fiats)
		fiatwallets = try? values?.decodeIfPresent([Commodity].self, forKey: .fiatwallets)
		wallets = try? values?.decodeIfPresent([Commodity].self, forKey: .wallets)
	}

}
