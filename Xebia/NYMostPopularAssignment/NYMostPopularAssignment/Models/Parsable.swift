//
//  Parsable.swift
//  NYMostPopularAssignment
//
//  Created by Mehboob Alam on 06/12/19.
//  Copyright © 2019 VE. All rights reserved.
//

import Foundation


/*
* It is a protocall which i have used for data parsing to provide Generic effect for responses
*/
protocol Parsable {
    init?(withJSON json: [String: Any])
}
