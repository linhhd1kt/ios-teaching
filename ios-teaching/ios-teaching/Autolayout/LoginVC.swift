//
//  LoginVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 4/18/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit
import Alamofire

class LoginVC: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        userNameTextField.text = "admin@example.com"
        passwordTextField.text = "12345678"
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        let url = "http://api.baongocstore.com/v1/auth/login"
        
        let paramDict:[String: Any] = [
            "email": userNameTextField.text!,
            "password": passwordTextField.text!,
        ]
        
        Alamofire.request(url, method: .post, parameters: paramDict, encoding: URLEncoding.default).responseJSON { (data) in
            print("call back done")
            print(data)
            self.performSegue(withIdentifier: "loginSuccessSegue", sender: self)
            // dung lib SwiftyJson de parse
            
        }
        print(" hi there")
    }
    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        print(" segue login done")
//        switch identifier {
//        case "loginSuccessSegue":
//            return self.isLoginSuccess
//        default:
//            return false
//        }
//    }
}
