//
//  ImagePickerVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/25/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class ImagePickerVC: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var floatButton: UIButton!
    @IBOutlet weak var ButtonToBottomContraint: NSLayoutConstraint!
    var newContraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
//        self.view.removeConstraint(ButtonToBottomContraint)
//        newContraint = NSLayoutConstraint(item: self.view, attribute: .bottom, relatedBy: .equal, toItem: floatButton, attribute: .bottom, multiplier: 1, constant: 100)
//        self.view.addConstraint(newContraint)
    }
    
    var currentOffset: CGFloat = 0
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.y
        if offset > currentOffset {
            
            UIView.animate(withDuration: 0.5, animations: {
                self.ButtonToBottomContraint.constant = 0
                self.view.layoutIfNeeded()
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.ButtonToBottomContraint.constant = 100
                self.view.layoutIfNeeded()
            })
        }
//        currentOffset = offsetAuthVC
    }
    @IBAction func openXibVCAction(_ sender: Any) {
        
        let authVC = AuthVC(nibName: "AuthVC", bundle: nil)
        
//        self.navigationController?.pushViewController(authVC, animated: true)
        
        self.present(authVC, animated: true, completion: nil)
        
    }
}
