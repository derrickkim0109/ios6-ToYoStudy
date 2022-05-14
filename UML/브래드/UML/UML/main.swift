//
//  main.swift
//  UML
//
//  Created by 허건 on 2022/05/14.
//

import Foundation

let person = Person(name: "Brad", money: 5000)
let cafeManager = CafeManager()

let tomtom = CoffeeShop(manager: cafeManager)

person.buy(menu: .americano, at: tomtom)
