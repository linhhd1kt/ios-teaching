//
//  RoundAvatar.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/2/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class RoundAvatar: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 118/2
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 1
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 2, height: 10)
        self.layer.shadowRadius = 2
        self.layer.shadowOpacity = 0.5
    }


}

