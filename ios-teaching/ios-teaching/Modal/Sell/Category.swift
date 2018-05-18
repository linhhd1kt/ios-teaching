//
//  Category.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/18/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import SwiftyJSON

struct Category {
    var id: Int
    //    var parent_id: Int for use later
    var name: String
    //    var description: String
    var created_at: Date
    var updated_at: Date
    
    init(_ json: JSON) {
        id = json["id"].intValue
        name = json["name"].stringValue
        created_at = json["created_at"].stringValue.toDate()
        updated_at = json["updated_at"].stringValue.toDate()
    }
}
