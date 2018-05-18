//
//  SellingTableVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 4/18/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class SellingTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayData = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        Api.shared.fetchProducts { (productInfo, error) in
            guard error == nil else {
                print(error ?? "system error")
                return
            }
            self.arrayData = productInfo.data
            // phải load lại tableview sau khi update data
            self.tableView.reloadData()
        }
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
