//
//  main.swift
//  Higher-oreder-functionsPractice
//
//  Created by 허건 on 2022/05/28.
//


import Foundation

//MARK: - 실험 1
struct Character {
    var punch: () -> Void = { print("퍽퍽") }
    var jump: () -> Void = { print("짬프") }
    var sprint: () -> Void = { print("슈슉달리기") }

    func tabShiftKey(skill: () -> Void) {
        return skill()
    }
}

let wongbing = Character()
wongbing.tabShiftKey(skill: wongbing.jump)
wongbing.tabShiftKey(skill: wongbing.punch)
wongbing.tabShiftKey {
    wongbing.sprint()
}

//MARK: - 실험 2

var list = [1,2,3,"하나","둘","셋"] as [Any]

var onlyStringList = list.filter { ($0 as? String) != nil }
var onlyIntList = list.filter { ($0 as? Int) != nil } as [Int]

var onlyStringList2 = list.compactMap { ($0 as? String)}
var onlyIntList2 = list.compactMap { ($0 as? Int) }
//
//print(onlyStringList)
//print(onlyIntList)

var list2 = ["일","이","삼"]
var noSpaceStr = list2.reduce("", +)
print(noSpaceStr)
//
var list3 = [1, 2, 3]
//var sumAllNumber = list3.reduce(0,-)
//print(sumAllNumber)
//
//var expectation = ["일이삼", 123] as [Any]

var conditionSumNumber = list3.filter { $0 > 1 }.reduce(0,+)
print(conditionSumNumber)

var list4 = ["하나","둘","셋"]
var pastList = list4.map { "봉골레 파스타 " + $0 }
print(pastList)


//MARK: - 실험 3

extension Sequence {
    @inlinable // 자주 사용될, 호출이 자주 될 함수를 명시 해주어서
    public func myMap<T>(_ transform: (Element) throws -> T) rethrows -> [T] {
        let initialCapacity = underestimatedCount
        var result = ContiguousArray<T>()
        result.reserveCapacity(initialCapacity) // 초기 수용 범위 설정
        
        var iterator = self.makeIterator()
        
        for _ in 0..<initialCapacity {
            result.append(try transform(iterator.next()!))
        }
        while let element = iterator.next() {
            result.append(try transform(element))
        }
        return Array(result)
    }
}

var list = [1,2,3]
print(list.myMap {
    $0 + 1
})

func myReduce(){}
func myFilter(){}

list.map { throw myError.error1 }

enum myError: Error {
    case error1
}
