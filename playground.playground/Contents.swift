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

//
//
//class Person {
//    var height = 10
//
//}
//
//extension Person {
//
//    var newheight {
//        return self.height * 10
//    }
//
//    func eat() {
//        print("eating....")
//    }
//}
//
//let p = Person()
//p.eat()
//
//print(p.height)
000000

extension UIColor {
    var toHexString: String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        return String(
            format: "%02X%02X%02X",
            Int(r * 0xff),
            Int(g * 0xff),
            Int(b * 0xff)
        )
    }
}

print(UIColor.green.toHexString)
