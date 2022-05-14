//
//  Coffee.swift
//  UML_Practice
//
//  Created by Baek on 2022/05/14.
//

import Foundation

class Coffee {
    var kind: CoffeeMenu
    var amount: Int
    
    init(kind: CoffeeMenu) {
        self.kind = kind
        self.amount = kind.price
    }
}
