//
//  LoginVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 4/18/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit
import Alamofire

// Bai ve auto layout
class LoginVC: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        userNameTextField.text = "admin@example.com"
        passwordTextField.text = "12345678"
    }
    
    func loginCallBack(data: DataResponse<Any>) {
        print(data)
        self.performSegue(withIdentifier: "loginSuccessSegue", sender: self)
    }
    
    func login_callback(error: String, isLoginSuccess: Bool) {
        if isLoginSuccess {
            self.performSegue(withIdentifier: "loginSuccessSegue", sender: self)
        } else {
            print("login failed")
        }
    }
    
    // sample call back
    func callback(_ text: String) {
        print(text)
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        
        callback("hi")
        Api.shared.tellHello(callback: callback)
        Api.shared.login(email: userNameTextField.text!, password: passwordTextField.text!, callback: login_callback)
        

        
    }
    
}
