//
//  Coffee.swift
//  UML
//
//  Created by 허건 on 2022/05/14.
//

enum CoffeeMenu {
    case americano
    case latee
}

extension CoffeeMenu {
    var price: Int {
        switch self {
        case .americano:
            return 1000
        case .latee:
            return 2000
        }
    }
}

