//
//  CustomXibView.swift
//  ios-teaching
//
//  Created by Ha Linh on 6/1/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class CustomXibView: UIView {
    
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "CustomXibView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
}

