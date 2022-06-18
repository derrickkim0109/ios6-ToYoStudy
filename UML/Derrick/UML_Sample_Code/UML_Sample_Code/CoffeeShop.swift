//
//  CoffeeShop.swift
//  UML_Sample
//
//  Created by Derrick kim on 2022/05/14.
//

import Foundation

class CoffeeShop {
    let manager: CoffeeManager
    
    init(manager: CoffeeManager) {
        self.manager = manager
    }
}

extension CoffeeShop {
    func order(_ menu: CoffeeMenu) {
        manager.brew(menu)
    }
}
