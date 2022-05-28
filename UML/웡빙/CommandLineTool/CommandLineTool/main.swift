//MARK: - 연습 및 테스트용 commandLineTool
import Foundation

let wongbing = Person(name: "wongbing", money: 11000)
let derrick = CafeManager()
let starBucks = CoffeeShop(manager: derrick)

wongbing.buy(.americano, at: starBucks)
wongbing.buy(.lattee, at: starBucks)
wongbing.buy(.lattee, at: starBucks)


