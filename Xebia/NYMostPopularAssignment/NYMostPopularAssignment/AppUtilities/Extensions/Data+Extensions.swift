//
//  Data+Extensions.swift
//  Assignement_BigStep
//
//  Created by Mehboob Alam on
//  Copyright © 2019 Alam. All rights reserved.
//

import Foundation

/// This is the parsing of json json
extension Data {
    func parseData(options:JSONSerialization.ReadingOptions? = nil) throws -> [String: Any]  {
        let options = options ?? JSONSerialization.ReadingOptions(rawValue: 0)
        guard let array = try JSONSerialization.jsonObject(with: self, options: options) as? [String:Any] else {
            return [:]
        }
        return array
    }
}
