//
//  main.swift
//  UML_Practice
//
//  Created by Baek on 2022/05/14.
//

import Foundation

let person = Person(name: "백곰", money: 5000)
let shop = CoffeeShop.init(manager: CafeManager.init(name: "야곰", money: 5000))

person.buy(.americano, at: shop)

