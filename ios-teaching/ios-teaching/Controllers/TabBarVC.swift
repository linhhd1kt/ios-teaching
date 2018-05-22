//
//  TabBarVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/21/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit


class TabBarVC: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        if let email = UserDefaults.standard.string(forKey: EMAIL_KEY),
            let password = UserDefaults.standard.string(forKey: PASSWORD_KEY) {
            Api.shared.login(email: email, password: password) { (error, isSuccess) in
            }
        }
    }
    
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        switch viewController.className {
        case SellingTableVC.className, ProfileVC.className, NotificationVC.className:
            if Api.shared.token == "" {
                showLoginVC()
                return false
            }
            return true
        default:
            return true
        }
    }
    
    // Cài đặt delegate giữa LoginVC và TabbarVC để thực hiện call function này
    func showFirstTab() {
        self.selectedIndex = 0
    }
    
    func showLoginVC() {
        let mainStoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let loginVC = mainStoryBoard.instantiateViewController(withIdentifier: LoginVC.className)
        self.present(loginVC, animated: true) {
            print("present login vc finish")
        }
    }
    
//    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//        if let titleItem = item.title {
//            switch titleItem {
//            case "Đi chợ":
//                break
//            case "Tôi bán":
//                showLoginVC()
//            case "Thông báo":
//                break
//            default:
//                break
//
//            }
//        }
//    }
    
}
