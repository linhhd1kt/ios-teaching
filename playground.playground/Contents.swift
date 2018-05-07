//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let arrData = [1,3,10,4,5,6,7,8,9]

var aArray = [Int]()

for number in arrData {
    if number < 5 {
        aArray.append(number)
    }
}


let bArray = arrData.filter { (number) -> Bool in
    return number < 5
}


let cArray = arrData.map { (number) -> Int in
    return number * 2
}

let dArray = arrData.map { $0 * 2 }


print(aArray)

print(bArray)

print(cArray)

print(dArray)
