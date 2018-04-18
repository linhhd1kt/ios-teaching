//
//  CornerRadiusButton.swift
//  ios-teaching
//
//  Created by Ha Linh on 4/18/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class CornerRadiusButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 4
        self.layer.masksToBounds = true
    }
    
}

