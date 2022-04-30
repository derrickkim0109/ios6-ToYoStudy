//MARK: - 4.16 토요스터디

var budget: Int = 2000
var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]

func startBuyProgram(number: Int) {
    
    do {
        try buy(productNumber: number)
        
    } catch {
        
        switch error {
            
        case buyError.noMoney:
            print("잔액이 부족합니다 \n")
        case buyError.noStock:
            print("재고가 없습니다 \n")
        default:
            print("알수없는 오류 \(error)")
        }
    }
}

func buy(productNumber: Int) throws {
    
    let existProductList = generateList()
    print("상품목록 \(existProductList) \n")
    
    guard let product = productsList[productNumber] else { throw buyError.noStock }
    
    if budget <= 0 {
        throw buyError.noMoney
    }
    
    budget -= 1000
   
    print("\(product)를 구매하셨습니다.")
    productsList[productNumber] = nil
    
    print("남은 돈은 \(budget)원 입니다 \n")
}

func generateList() -> [String] {
    
    var existProductList: [String] = []
    
    for optionalProduct in productsList {
        let product = optionalProduct ?? "없음"
        existProductList.append(product)
    }
    
    return existProductList
}

enum buyError: Error {
    
    case noStock
    case noMoney
}

startBuyProgram(number: 0)
startBuyProgram(number: 0)
startBuyProgram(number: 1)
startBuyProgram(number: 2)










///force unwrapping
///
//for (index, optionalProduct) in productsList.enumerated() {
//
//    let product = optionalProduct!
//    print("\(index)번 상품은 \(product)입니다.")
//}

/// if let
//for (index, optionalProduct) in productsList.enumerated() {
//
//    if let product = optionalProduct {
//        print("\(index)번 상품은 \(product)입니다.")
//    }
//}

///guard let
///
//for (index, optionalProduct) in productsList.enumerated() {
//
//    guard let product = optionalProduct else { continue }
//
//    print("\(index)번 상품은 \(product)입니다.")
//}

/// nil coalescing
///
//for (index, optionalProduct) in productsList.enumerated() {
//
//    let product = optionalProduct ?? "없음"
//    print("\(index)번 상품은 \(product)입니다.")
//}







