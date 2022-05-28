//
//  Person.swift
//  UML_Sample
//
//  Created by Derrick kim on 2022/05/14.
//

import Foundation

class Person {
    let name: String
    let money: Int
    var coffee: Coffee?
    
    init(name: String, money: Int) {
        self.name = name
        self.money = money
    }
}

extension Person {
    func buy(_ menu: CoffeeMenu, at shop: CoffeeShop) {
        if(menu.price <= self.money) {
            shop.order(menu)
        } else {
            print("잔액이 부족합니다.")
        }
    }
}

