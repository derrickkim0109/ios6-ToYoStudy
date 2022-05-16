//
//  CoffeeMenu.swift
//  CommandLineTool
//
//  Created by 이원빈 on 2022/05/16.
//

import Foundation

enum CoffeeMenu: String {
    case americano = "아메리카노"
    case lattee = "라떼"
}

extension CoffeeMenu {
    var price: Int {
        switch self {
            case .americano:
                return 5000
            case .lattee:
                return 6000
        }
    }
}
