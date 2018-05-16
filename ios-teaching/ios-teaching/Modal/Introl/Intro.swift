//
//  Intro.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/14/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import Foundation
import UIKit

enum IntrolSize {
    case small
    case large
}

struct IntroItem {
    var titleName: String
    var image: UIImage
    var size: IntrolSize = .small
    
}
