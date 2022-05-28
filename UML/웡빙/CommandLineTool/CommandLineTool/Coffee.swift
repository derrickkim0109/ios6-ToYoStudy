//
//  Coffee.swift
//  CommandLineTool
//
//  Created by 이원빈 on 2022/05/16.
//

import Foundation

class Coffee {
    var kind: CoffeeMenu
    var amount: Int
    init(kind: CoffeeMenu){
        self.kind = kind
        self.amount = 0
    }
}
