//
//  Person.swift
//  UML
//
//  Created by 허건 on 2022/05/14.
//

import Foundation

class Person {
    var name: String
    var money: Int
    var coffee: Coffee?
    
    var coffeeShop = Coffee(kind: .americano)
    
    init (name: String, money: Int) {
        self.name = name
        self.money = money
    }
}

extension Person {    
    func buy(menu: CoffeeMenu, at shop: CoffeeShop) {
        if menu.price <= self.money  {
            money = money - menu.price
            shop.order(_menu: menu)
        } else {
            print("잔액이 부족합니다.")
        }
    }
}
