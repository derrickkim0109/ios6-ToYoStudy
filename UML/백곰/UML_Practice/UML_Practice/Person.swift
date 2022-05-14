//
//  Person.swift
//  UML_Practice
//
//  Created by Baek on 2022/05/14.
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
        if  menu.price <= self.money {
            money = money - menu.price
            shop.order(menu)
        } else {
            print("잔액이 부족합니다.")
        }
    }
}
