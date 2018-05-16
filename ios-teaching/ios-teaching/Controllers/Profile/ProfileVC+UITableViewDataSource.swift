//
//  ProfileVC+UITableViewDataSource.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/9/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit

extension ProfileVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.profileItems.count
        case 1:
            return self.settingItems.count
        default:
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch indexPath.section {
        case 0:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "ProfileCell") as! ProfileCell
            let item = self.profileItems[indexPath.item]
            cell.set(icon: item.0, name: item.1)
            return cell
        default:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "SettingCell") as! SettingCell
            let item = self.settingItems[indexPath.item]
            cell.set(name: item)
            return cell
        }
    }
}


