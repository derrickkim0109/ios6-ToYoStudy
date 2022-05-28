//
//  Coffee.swift
//  UML_Sample
//
//  Created by Derrick kim on 2022/05/14.
//

import Foundation

class Coffee {
    let kind: CoffeeMenu
    var amount: Int
    
    init(kind: CoffeeMenu) {
        self.kind = kind
        self.amount = kind.price
    }
}

enum CoffeeMenu {
    case americano
    case latte
}

extension CoffeeMenu {
    var price: Int {
        switch self {
        case .americano:
            return 5000
        case .latte:
            return 5500
        }
    }
}
