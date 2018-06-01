//
//  AddSearchBarOnNavigationBarVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 6/1/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class AddSearchBarOnNavigationBarVC: UIViewController, UISearchBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let searchbar = UISearchBar()

        navigationItem.titleView = searchbar
    }

    

}
