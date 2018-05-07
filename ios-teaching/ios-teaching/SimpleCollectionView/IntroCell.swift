//
//  IntroCell.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/7/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class IntroCell: UICollectionViewCell {
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
//    func setup(title: String, image: UIImage) {
//        labelTitle.text = title
//        imageView.image = image
//    }
    
    func setup(_ item: IntroItem) {
        labelTitle.text = item.titleName
        imageView.image = item.image
    }
}
