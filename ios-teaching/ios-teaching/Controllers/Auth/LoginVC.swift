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
    
    @IBAction func loginAction(_ sender: UIButton) {
        Api.shared.login(email: userNameTextField.text!, password: passwordTextField.text!, callback: loginCallBack)
        
    }
    
}
