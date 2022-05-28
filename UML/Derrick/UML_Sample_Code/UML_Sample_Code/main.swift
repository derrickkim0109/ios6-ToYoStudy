//
//  main.swift
//  UML_Sample_Code
//
//  Created by Derrick kim on 2022/05/14.
//

import Foundation

let derrick = Person(name: "Derrick", money: 100000)

let coffeeManager = CoffeeManager()
let starbucks = CoffeeShop(manager: coffeeManager)

derrick.buy(.americano, at: starbucks)
