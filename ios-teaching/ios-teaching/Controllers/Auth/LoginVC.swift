//
//  LoginVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 4/18/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit
import Alamofire

let EMAIL_KEY = "EMAIL_KEY"
let PASSWORD_KEY = "PASSWORD_KEY"

// Bai ve auto layout
class LoginVC: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        userNameTextField.text = "admin@example.com"
        passwordTextField.text = "12345678"
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        Api.shared.login(email: userNameTextField.text!, password: passwordTextField.text!) { (error, isSuccess) in
            if isSuccess {
                UserDefaults.standard.set(self.userNameTextField.text!, forKey: EMAIL_KEY)
                UserDefaults.standard.set(self.passwordTextField.text!, forKey: PASSWORD_KEY)
                
                self.dismiss(animated: true, completion: nil)
            } else {
                print("login failed")
            }
        }
    }
    
    @IBAction func closeAtion(_ sender: UIButton) {
        self.dismiss(animated: true) {
            print("dissmiss finish")
        }
    }
}
