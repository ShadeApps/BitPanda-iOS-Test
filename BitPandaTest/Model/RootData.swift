//
//	RootData.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import Foundation

struct RootData: Codable {

	let data: ResponseData?

	init(from decoder: Decoder) throws {
		let values = try? decoder.container(keyedBy: CodingKeys.self)
		data = try? values?.decodeIfPresent(ResponseData.self, forKey: .data)
	}

}
