//
//  main.swift
//  ARC_Memory_Structure
//
//  Created by Derrick kim on 2022/06/04.
//

import Foundation

class OuterClass {
    // innerInstance는 스택
    // InnerClass()는 힙영역
    var innerInstance = InnerClass()
}

class InnerClass {
    
}

var outerInstance: OuterClass = OuterClass()
var outerInstance2 = outerInstance
var outerInstance3 = outerInstance
var outerInstance4 = outerInstance
var outerInstance5 = outerInstance

// 예시
func printMemoryAddress() {
    // outerInstance는 스택
    // OuterClass는 힙영역
    // 지역변수
    //    var outerInstance: OuterClass = OuterClass()
    
    /// 지역변수 outerInstance의 메모리 주소를 출력합니다.
    ///
    /// 메서드를 통해 변수(상수)의 주소값을 확인할 수 있습니다
    withUnsafePointer(to: &outerInstance) { value in
        print("Stack 영역의 값 : ",value)
    }
    
    /// 지역변수 outerInstance가 실제로. 가리키는 메모리 주소를 출력합니다.
    ///
    /// 프린트하면, 인스턴스의 실제 주소값을 확인할 수 있습니다
    withUnsafePointer(to: &outerInstance2) { value in
        print("Stack 영역의 값 : ",value)
    }
    print("heap 영역 2 : ", Unmanaged.passUnretained(outerInstance2).toOpaque())
    print("heap 영역 2 : ", Unmanaged.passUnretained(outerInstance2.innerInstance).toOpaque())

    withUnsafePointer(to: &outerInstance3) { value in
        print("Stack 영역의 값 : ",value)
    }
    print("heap 영역 : ", Unmanaged.passUnretained(outerInstance3).toOpaque())
    
    withUnsafePointer(to: &outerInstance4) { value in
        print("Stack 영역의 값 : ",value)
    }
    print("heap 영역 : ", Unmanaged.passUnretained(outerInstance4).toOpaque())
    
    withUnsafePointer(to: &outerInstance5) { value in
        print("Stack 영역의 값 : ",value)
    }
    print("heap 영역 : ", Unmanaged.passUnretained(outerInstance5).toOpaque())
}

printMemoryAddress()

//
//struct Memory {
//    /// Stack
//    @inlinable static func dump<T>(variable: inout T) {
//        withUnsafePointer(to: &variable) { print($0) }
//    }
//
//    /// Heap
//    @inlinable static func dump(with: UnsafeRawPointer) {
//        let address = Int(bitPattern: with)
//        print(String(format:"%018p", address))
//    }
//
//    @inlinable static func dump(object: AnyObject) {
//        print(Unmanaged.passUnretained(object).toOpaque())
//    }
//}
//
//struct StructDumpMemory {
//    func dumpString() {
//        var str1 = "abcd"
//        print("\n--------String(\(MemoryLayout.size(ofValue: str1)))------")
//        print("str1 = \(str1)")
//        Memory.dump(variable: &str1)
//        Memory.dump(with: str1)
//
//        str1 = "abcd567890123456890"
//        print("str1 = \(str1)")
//        Memory.dump(variable: &str1)
//        Memory.dump(with: str1)
//
//        print("str2 = str1")
//        var str2 = str1
//        Memory.dump(variable: &str2)
//        Memory.dump(with: str2)
//
//        print("str2 = zzzz")
//        str2 = "zzzz"
//        Memory.dump(variable: &str2)
//        Memory.dump(with: str2)
//
//        str1 = "xxxx567890xxxx567890xxxx567890xxxx567890xxxx567890xxxx567890xxxx567890xxxx567890"
//        print("str1 = \(str1)")
//        Memory.dump(variable: &str1)
//        Memory.dump(with: str1)
//    }
//
//    func dumpInt() {
//        var value1 = 10
//        print("\n--------Int(\(MemoryLayout.size(ofValue: value1)))---------")
//        Memory.dump(variable: &value1)
//        var value2 = value1
//        Memory.dump(variable: &value2)
//        value2 = 12
//        Memory.dump(variable: &value2)
//        value1 = 11
//        Memory.dump(variable: &value1)
//    }
//
//    func dumpArray() {
//        var array1 = [1,2,3]
//        print("\n--------Array(\(MemoryLayout.size(ofValue: array1)))------")
//        Memory.dump(variable: &array1)
//        Memory.dump(with: array1)
//        var array2 = array1
//        Memory.dump(variable: &array2)
//        Memory.dump(with: array2)
//        array2.append(9)
//        Memory.dump(variable: &array2)
//        Memory.dump(with: array2)
//        array1.append(4)
//        Memory.dump(variable: &array1)
//        Memory.dump(with: array1)
//    }
//
//    func dumpClass() {
//        class MyPoint : NSObject {
//            var x : Int = 0
//            var y : Int = 0
//        }
//
//        var pp1 = MyPoint()
//        pp1.x = 10
//        pp1.y = 20
//        print("\n--------class(\(MemoryLayout.size(ofValue: pp1)))-------")
//        Memory.dump(with: &pp1)
//        Memory.dump(object: pp1)
//        var pp2 = pp1
//        Memory.dump(with: &pp2)
//        Memory.dump(object: pp2)
//
//        //class only
//        print(ObjectIdentifier(pp1))
//        print(ObjectIdentifier(pp2))
//    }
//}
//
//let dumbStruct = StructDumpMemory()
//dumbStruct.dumpString()
//dumbStruct.dumpInt()
//dumbStruct.dumpArray()
//dumbStruct.dumpClass()


class ContainerClass {
    var contentInstance = ContentClass()
    
    deinit {
        print("저 메모리에서 사라집니다~ ")
    }
    
   
}

class ContentClass {
    
}

let container = ContainerClass()

func experiment_ReferenceCounting() {
    var containerInstance: ContainerClass? = ContainerClass()
    var containerInstance2: ContainerClass? = containerInstance
    print(CFGetRetainCount(containerInstance))
    containerInstance = nil
    print(CFGetRetainCount(containerInstance2))
    containerInstance2 = nil
}

experiment_ReferenceCounting()
