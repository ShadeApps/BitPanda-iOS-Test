//
//	ResponseData.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import Foundation

struct ResponseData: Codable {

	let items: Item?
	let type: String?

	init(from decoder: Decoder) throws {
		let values = try? decoder.container(keyedBy: CodingKeys.self)
		items = try? values?.decodeIfPresent(Item.self, forKey: .items)
		type = try? values?.decodeIfPresent(String.self, forKey: .type)
	}

}
