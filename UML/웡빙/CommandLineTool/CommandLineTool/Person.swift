//
//  Person.swift
//  CommandLineTool
//
//  Created by 이원빈 on 2022/05/16.
//

import Foundation

class Person {
    var name: String
    var money: Int
    var coffee: Coffee?
    
    init(name: String, money: Int) {
        self.name = name
        self.money = money
    }
    
    func buy(_ menu: CoffeeMenu, at shop: CoffeeShop) {
        if menu.price <= self.money {
            self.coffee = shop.order(menu)
            self.money -= menu.price
            print("\(menu.rawValue)를 마셔보자")
        } else {
            print("잔액이 부족합니다. \(menu.rawValue)를 구매하지 못했습니다")
        }
    }
}
