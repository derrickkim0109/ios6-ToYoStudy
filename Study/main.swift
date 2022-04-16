//
//  main.swift
//  Study
//
//  Created by 허건 on 2022/04/16.
//

import Foundation

var budget: Int = 2000
var productsNumber: Int = 0
var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]

func buy(productNumber: Int) {
    // Todo

}

func selectFunction() {
    print("\n원하는 기능을 선택해주세요 \n상품번호 선택: 1, 상품 리스트 선택: 2")
    let selectFunctionChoice = readLine()
    
    switch selectFunctionChoice {
    case "1":
        print("상품번호를 선택해주세요: ")
        guard let productsNumberChoice = readLine()?.split(separator: " ") else { return }
        //orderPurchase(in: &productsList, as: &productsNumberChoice)
        print(productsNumberChoice)
        
    case "2":
        print("상품 선택해주세요: ")
        var productsListChoice = readLine()
        //orderPurchase(in: productsList, as: productsListChoice)
        print(productsListChoice)

    default: print("다시 선택해주세요.")
    }
}

func checkBudget() {
    if budget == 0 {
        print("구매 할 수 없습니다.")
        return selectFunction()
    }
}

func productStock() {
    for productsNumber in productsList.indices {
        if let productsPrint = productsList[productsNumber] {
            print("\(productsNumber)번 상품은 \(productsPrint)입니다.")
            
        } else {
            print("\(productsNumber)번 상품이 없습니다.")
            
        }
    }
}

func orderPurchase(in list: inout [String], as userNumberChoice: inout [String]) {
    //list.remove(at: userNumberChoice)
}

productStock()
checkBudget()
selectFunction()
