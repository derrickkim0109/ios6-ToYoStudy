//
//  Coffee.swift
//  UML
//
//  Created by 허건 on 2022/05/14.
//

import Foundation

class Coffee {
    let kind: CoffeeMenu
    var amount: Int?
    
    init(kind: CoffeeMenu) {
        self.kind = kind
    }
}
