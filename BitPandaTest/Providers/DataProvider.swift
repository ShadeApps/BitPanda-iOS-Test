//
//  DataProvider.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import Foundation

struct DataProvider {

    func dataFor<T>(_ object: T.Type, url: URL) -> T? where T: Codable {
        guard let data = try? Data(contentsOf: url),
              let response = try? JSONDecoder().decode(T.self, from: data) else {
            return nil
        }

        return response
    }

}
