//
//  main.swift
//  Higher-oreder-functionsPractice
//
//  Created by 허건 on 2022/05/28.
//

import Foundation

//MARK: - 실험 1
class Character {
    func tabShiftKey(skill: () -> Void) {
        return skill()
    }
}

class Skills {
    let hit: () -> Void = {
        print("때리기")
    }
    
    let gain: (_ name: String) -> Void = { name in
        guard !name.elementsEqual("derrick") else {
            print("\(name)이 수금 중")
            return
        }
        print("\(name)의 돈을 얻다")
    }
}

//MARK: - 실험 2
let skills = Skills()
let students: [String] = ["derrick", "brad", "baekgom", "wongbing"]
let character = Character()

students.map {_ in
    print(character.tabShiftKey(skill: skills.hit))
}

//MARK: - 실험 3
extension Sequence {
    // 자주 사용될, 호출이 자주 될 함수를 명시 해주어서
    @inlinable
    public func myMap<T>(_ transform: (Element) throws -> T) rethrows -> [T] {
        let initialCapacity = underestimatedCount
        var result = ContiguousArray<T>()
        // 초기 수용 범위 설정
        result.reserveCapacity(initialCapacity)
        
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
