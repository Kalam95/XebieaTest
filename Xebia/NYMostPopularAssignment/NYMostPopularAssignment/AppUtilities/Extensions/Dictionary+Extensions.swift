//
//  Dictionary+Extensions.swift
//  NYMostPopularAssignment
//
//  Created by Mehboob Alam on 06/12/19.
//  Copyright © 2019 VE. All rights reserved.
//

import Foundation

/// This is the parsing of json elements where key must be string and value can be anything
extension Dictionary where Key == String ,Value == Any {
    func parse<T:Parsable>(parsable:T.Type) -> T? {
        return T(withJSON: self)
    }
}
