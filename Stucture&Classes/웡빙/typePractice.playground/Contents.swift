//MARK: optionalPractice에 이어서 typePractice

struct Shop {
    
    private var productList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
    
    func showList() {
        var existList: [String] = []
        for optionalProduct in productList {
            existList.append(optionalProduct ?? "물건")
        }
        print("상품목록 \(existList) \n")
    }
    
    mutating func manageList(number productNumber: Int) {
       productList[productNumber] = nil
    }
    
    func isNoStock(number: Int) throws -> String {
        guard let product = productList[number] else { throw BuyError.noStock }
        return product
    }
}

struct Camper {
    
    var budget: Int = 3000
    
    mutating func startBuyProgram(number: Int, at shop: inout Shop) {
        shop.showList()
        do {
            try buy(productNumber: number, at: &shop)
        } catch {
            switch error {
            case BuyError.noMoney:
                print("잔액이 부족합니다 \n")
            case BuyError.noStock:
                print("재고가 없습니다 \n")
            default:
                print("알수없는 오류 \(error)")
            }
        }
    }
    
    mutating func buy(productNumber: Int, at shop: inout Shop) throws { // 값 타입의 인스턴스 프로퍼티를 변경 해주려면 mutating 키워드
                                                                        
        let product = try shop.isNoStock(number: productNumber)
        
        if budget <= 0 {
            throw BuyError.noMoney
        }
        self.budget -= 1000
        print("\(product)를 구매하셨습니다.")
        print("남은 돈은 \(budget)원 입니다 \n")
        
        shop.manageList(number: productNumber)
    }
}

enum BuyError: Error {
    case noStock
    case noMoney
}
    
var koreaShop = Shop()
var japanShop = Shop()
var wongbing = Camper()

wongbing.startBuyProgram(number: 0, at: &koreaShop)
wongbing.startBuyProgram(number: 0, at: &koreaShop)
wongbing.startBuyProgram(number: 1, at: &koreaShop)
wongbing.startBuyProgram(number: 2, at: &koreaShop)
wongbing.startBuyProgram(number: 3, at: &koreaShop)
