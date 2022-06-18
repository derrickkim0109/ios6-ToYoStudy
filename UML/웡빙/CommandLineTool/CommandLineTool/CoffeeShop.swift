//
//  CoffeeShop.swift
//  CommandLineTool
//
//  Created by 이원빈 on 2022/05/16.
//

import Foundation

class CoffeeShop {
    var manager: CafeManager
    init(manager: CafeManager) {
        self.manager = manager
    }

    func order(_ menu: CoffeeMenu) -> Coffee {
        return manager.brew(menu)
    }
}


