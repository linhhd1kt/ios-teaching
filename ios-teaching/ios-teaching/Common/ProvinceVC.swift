//
//  ProvinceVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 4/18/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class ProvinceVC: UIViewController, UITableViewDataSource  {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.item == 0 {
            let cell = UITableViewCell()
            
            cell.contentView.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
            
            cell.contentView.backgroundColor = UIColor.red
            
            cell.textLabel?.text = "lasdflasdfk"
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProvinceCell") as! ProvinceCell

            cell.setup(name: "Đà Nẵng")

            return cell
        }
    }

}

