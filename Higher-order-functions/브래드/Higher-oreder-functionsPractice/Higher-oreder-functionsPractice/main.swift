//
//  main.swift
//  Higher-oreder-functionsPractice
//
//  Created by 허건 on 2022/05/28.
//

import Foundation

//struct Skills {
//    let attack = { () in
//        print("attack")
//    }
//
//    let cure = { () in
//        print("cure")
//    }
//
//    func tabShiftKey(skill: () -> Void) {
//
//        return skill()
//    }
//}
//
//// 캐릭터 생성해서 스킬 사용??
//let user = Skills()
//user.tabShiftKey(skill: user.attack)
//user.tabShiftKey(skill: user.cure)

// map(), reduce(), filter()


// map: 기존 데이터를 변경되지 않은 상태에서 변형하기 위헤
//let higherFunctionTest = ["1", "2", "3", "4", "+"]
//let mapTest = higherFunctionTest.map { (number: String) -> Double in
//    guard let word = Double(number) else {
//        return .nan
//    }
//    return word
//}
//print("map:    \(mapTest)")
//
//// reduce: 컨테이너 내부의 요소를 하나로 합하는 역활 (연산을 수행하여 하나로 합칠 수 있다)
//let higherFunctionTest2 = [1, 2, 3, 4]
//let reduceTest = higherFunctionTest2.reduce(1) { (result: Int, element: Int) -> Int in
//    return result + element
//}
//print("reduce: \(reduceTest)")
//
//// filter: 컨테이너 내부의 값을 걸러 추출하는 역활 Bool 타입,,
//let higherFunctionTest3 = ["1", "2", "3", "4"]
//let filterTest = higherFunctionTest3.filter { (number: String) -> Bool in
//    return String(number) != nil
//}
//print("filter: \(filterTest)")


let myArray: [Any] = [1, 2, 3, 4, "33"]

// return! 형 변환.
func myMap(Array: [Any]) {
    var newArray: [Any] = []

    for index in 0..<Array.count {
        let elements = Array[index]
        print(elements)
        newArray.append(elements)
    }
    print(newArray)
}

myMap(Array: myArray)

func myReduce(standElment: Any, Array: [Any]) {
    var newArray: [Any] = []

    for index in 0..<Array.count {
        let elements = Array[index]
        print(elements)
        newArray.append(elements)
    }
    print(newArray)
}
