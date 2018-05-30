//
//  CustomVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/30/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class CustomVC: UIViewController {

    var label: UILabel!
    var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = createLabel()
        view.addSubview(label)
        creatButton()
    }

    
    private func createLabel() -> UILabel {
        let labelWidth: CGFloat = 200.0
        let labelheight: CGFloat = 80.0
        
        let originX: CGFloat = (view.bounds.width / 2) - (labelWidth / 2)
        let originY: CGFloat = view.bounds.height / 3
        
        let labelFrame = CGRect(x: originX, y: originY, width: labelWidth, height: labelheight)
        
        let label = UILabel(frame: labelFrame)
        
        label.backgroundColor = UIColor.brown
        label.text = "Label here"
        label.textColor = UIColor.white
        label.textAlignment = .center
        return label
    }
    
    private func creatButton() {
        button = UIButton()
        
        button.setTitle("Button here", for: .normal)
        button.tintColor = UIColor.white
        button.backgroundColor = UIColor.green
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let withContraint = NSLayoutConstraint(item: button, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        let heighContraint = NSLayoutConstraint(item: button, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
        
        let centerXContraint = NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        
        let centerYContraint = NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
        
        
        view.addSubview(button)
        
        view.addConstraints([withContraint, heighContraint, centerXContraint, centerYContraint])
//        return button
        
    }

}
