//
//  Observable.swift
//  NYMostPopularAssignment
//
//  Created by Mehboob Alam on 06/12/19.
//  Copyright © 2019 VE. All rights reserved.
//

import Foundation

typealias Listner<T> = (T)->Void

/// This is the property observer which is used to bind view and viewModels
class Observable<T> {
    
    var value: T? {
        willSet {
            if let newVal = newValue {
                listner?(newVal)
            }
        }
    }
    
    var listner: Listner<T>?
    func bind(listner: @escaping Listner<T>) {
        self.listner = listner
    }
}
