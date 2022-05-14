//
//  CoffeeShop.swift
//  UML_Practice
//
//  Created by Baek on 2022/05/14.
//

import Foundation

class CoffeeShop {
    var manager: CafeManager
    
    init(manager: CafeManager) {
        self.manager = manager
    }
    
    func order(_ menu: CoffeeMenu) {
        manager.brew(menu)
    }
}
