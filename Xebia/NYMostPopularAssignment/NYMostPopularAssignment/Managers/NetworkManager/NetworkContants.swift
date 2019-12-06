//
//  NetworkContants.swift
//  NYMostPopularAssignment
//
//  Created by Mehboob Alam on 06/12/19.
//  Copyright © 2019 VE. All rights reserved.
//

import Foundation


let WEB_SERVICE_URL = "http://api.nytimes.com"
let PERIOD = 7
let API_KEY = "OughvaUmpBtbIlxvxJlHXjxHrQ21WkwG"
struct APIPints {
    static var mostPopularList = "/svc/mostpopular/v2/viewed/\(PERIOD).json?api-key=\(API_KEY)"
}
