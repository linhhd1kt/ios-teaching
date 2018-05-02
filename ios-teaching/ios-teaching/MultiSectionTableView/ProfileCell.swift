//
//  ProfileCell.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/2/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {

    @IBOutlet weak var icon: RoundAvatar!
    @IBOutlet weak var name: UILabel!
    
    func set(icon: UIImage, name: String) {
        self.icon.image = icon
        self.name.text = name
    }
    
}
