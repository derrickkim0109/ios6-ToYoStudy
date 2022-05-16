//
//  CafeManager.swift
//  CommandLineTool
//
//  Created by 이원빈 on 2022/05/16.
//

import Foundation

class CafeManager {
    func brew(_ menu: CoffeeMenu) -> Coffee {
        return .init(kind: menu)
    }
}
