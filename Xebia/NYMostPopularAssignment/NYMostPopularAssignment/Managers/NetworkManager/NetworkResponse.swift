//
//  NetworkResponse.swift
//  NYMostPopularAssignment
//
//  Created by Mehboob Alam on 06/12/19.
//  Copyright © 2019 VE. All rights reserved.
//

import Foundation

//NOTE: I have just made it simple with few fields because of less time and less requirements.

class NetworkResponse<T: Parsable> {
    
    var json: [String: Any] = [:]
    var data: T? {
        return T(withJSON: json)
    }
    var resultType: Result<T, APIError>
    
    init(json: [String: Any], result: Result<T, APIError>) {
        self.json = json
        self.resultType = result
    }
}
