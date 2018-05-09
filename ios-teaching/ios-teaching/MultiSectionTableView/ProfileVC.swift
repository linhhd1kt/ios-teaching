//
//  ProfileVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/2/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var profileItems = [(#imageLiteral(resourceName: "ic_default_user"), "Tin rao yêu thích"),(#imageLiteral(resourceName: "ic_default_user"), "Tin rao yêu thích"),(#imageLiteral(resourceName: "ic_default_user"), "Tin rao yêu thích"),]
    var settingItems = ["Âm thanh", "Hình ảnh" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
    }
    
}



// bài tập về nhà.
extension ProfileVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
}
