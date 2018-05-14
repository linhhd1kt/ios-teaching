//
//  SettingCell.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/2/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class SettingCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    func set(name: String) {
        self.name.text = name
    }

}
