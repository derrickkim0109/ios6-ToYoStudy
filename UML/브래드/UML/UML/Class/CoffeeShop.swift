//
//  CoffeeShop.swift
//  UML
//
//  Created by 허건 on 2022/05/14.
//

import Foundation

class CoffeeShop {
    var manager: CafeManager
    
    init(manager: CafeManager) {
        self.manager = manager
    }
    
    func order(_menu: CoffeeMenu) {
        manager.brew(_menu)
    }
}
