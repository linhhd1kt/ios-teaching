//
//  ScrollViewVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/23/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class ScrollViewVC: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scroll.delegate = self
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("scrollViewDidScroll: \(scrollView.contentOffset.y)")
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        print("scrollViewDidEndDecelerating: \(scrollView.contentOffset.y)")
        let offsetY = scrollView.contentOffset.y
        
        print("offset y:\(offsetY)")
        print("contentSize height:\(scrollView.contentSize.height)")
        
        print("offset + bound.height: \(offsetY + scrollView.bounds.height)")
        
        if (offsetY + scrollView.bounds.height) >= scrollView.contentSize.height {
            print("load more")
        }
    }

    
}
