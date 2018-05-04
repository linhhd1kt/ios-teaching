//
//  SellSizingTableViewVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/4/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class SellSizingTableViewVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayData = ["Dưa hấu là một quả gì đó Dưa hấu là một quả gì đó Dưa hấu là một quả gì đó Dưa hấu là một quả gì đó Dưa hấu là một quả gì đó ", "Cà Chua Dưa hấu là một quả gì đó ", "Xoài Dưa hấu là một quả gì đó ", "Mực", "Mèo", "Dưa hấu", "Cà Chua", "Xoài", "Mực", "Mèo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 20
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SellingCell") as! SellingCell
        let item = arrayData[indexPath.item]
        cell.setupCell(item)
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 60
//    }
    
}

