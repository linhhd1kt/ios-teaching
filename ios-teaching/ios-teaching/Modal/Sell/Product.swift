//
//  SelllingItem.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/18/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import SwiftyJSON

//API product create, sau khi upload tra ve: url là products/dell.jpg_5aa20240a1bad.jpg
//
//Đường dẫn truy cập đến file ảnh: http://api.baongocstore.com/storage/products/dell.jpg_5aa20240a1bad.jpg


struct Product {
    var id: Int
    var category_id: String
    var name: String
    var unit_id: String
    var retail_price: String
    var wholesale_price: String
    var featured_image: String
    var desc: String
    var created_at: Date
    var updated_at: Date
    var category: Category
    var unit: Unit

    init(_ json: JSON) {
        id = json["id"].intValue
        category_id = json["category_id"].stringValue
        name = json["name"].stringValue
        unit_id = json["unit_id"].stringValue
        retail_price = json["retail_price"].stringValue
        wholesale_price = json["wholesale_price"].stringValue
        featured_image = json["featured_image"].stringValue
        desc = json["desc"].stringValue
        created_at = json["created_at"].stringValue.toDate()
        updated_at = json["updated_at"].stringValue.toDate()
        category = Category(json["category"])
        unit = Unit(json["unit"])
    }
}

