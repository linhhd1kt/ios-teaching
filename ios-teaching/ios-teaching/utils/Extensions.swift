//
//  Extensions.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/9/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import Foundation
import UIKit

extension Int {
    static func getMaxDouble() -> Int {
        return Int.max
    }
}

extension String {
    func toDate() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        if let date = dateFormatter.date(from: self) {
            return date
        }
        return Date()
    }
}

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

extension NSObject {
    var className: String {
        return String(describing: type(of: self))
    }
    
    class var className: String {
        return String(describing: self)
    }
}
