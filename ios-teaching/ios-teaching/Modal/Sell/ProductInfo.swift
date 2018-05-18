//
//  ProductInfo.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/18/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import SwiftyJSON

struct ProductInfo {
    var current_page: Int
    var data: [Product]
    
    init(_ json: JSON) {
        current_page = json["current_page"].intValue
//        let array = json["data"].arrayValue
//        data = [Product]()
//        for item in array {
//            let product = Product(item)
//            data.append(product)
//        }
        data = json["data"].arrayValue.map{ Product($0) }
    }
    
    init() {
        current_page = 0
        data = []
    }
    
}
