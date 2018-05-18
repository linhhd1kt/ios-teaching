//
//  SellingCell.swift
//  ios-teaching
//
//  Created by Ha Linh on 4/18/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit


// dùng thư viện sdwebimage dể get image từ url về.
class SellingCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func setupCell(_ item: Product) {
        nameLabel.text = item.name
    }

}
// http://api.baongocstore.com/storage/products/dell.jpg_5aa20240a1bad.jpg


//http://api.baongocstore.com/storage/products/A-2A.png_5ac8b3e0e5090.png
