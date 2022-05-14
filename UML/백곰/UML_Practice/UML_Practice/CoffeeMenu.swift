//
//  CoffeeMenu.swift
//  UML_Practice
//
//  Created by Baek on 2022/05/14.
//

import Foundation

enum CoffeeMenu {
    case americano
    case latte
    
    var price: Int {
        switch self {
        case .americano:
            return 3000
        case .latte:
            return 4000
        }
    }
}

