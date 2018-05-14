//
//  ProvinceCell.swift
//  ios-teaching
//
//  Created by Ha Linh on 4/20/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class ProvinceCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    func setup(name: String) {
        nameLabel.text = name
    }

}
