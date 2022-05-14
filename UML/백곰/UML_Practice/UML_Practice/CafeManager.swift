//
//  CafeManager.swift
//  UML_Practice
//
//  Created by Baek on 2022/05/14.
//

import Foundation

class CafeManager: Person {
    
    func brew(_ menu: CoffeeMenu) {
        print("주문하신 \(menu)나왔습니다.")
    }
}
