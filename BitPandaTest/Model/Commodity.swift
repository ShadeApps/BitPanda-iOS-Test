//
//	Commodity.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import Foundation

struct Commodity: Codable {

	let attributes: Attribute?
	let id: String?
	let type: String?

	init(from decoder: Decoder) throws {
		let values = try? decoder.container(keyedBy: CodingKeys.self)
		attributes = try? values?.decodeIfPresent(Attribute.self, forKey: .attributes)
		id = try? values?.decodeIfPresent(String.self, forKey: .id)
		type = try? values?.decodeIfPresent(String.self, forKey: .type)
	}

}
