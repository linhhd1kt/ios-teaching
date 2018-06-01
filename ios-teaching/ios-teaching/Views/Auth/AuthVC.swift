//
//  AuthVC.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/30/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import UIKit
import FBSDKLoginKit




class AuthVC: UIViewController {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var containerViewHeightConstaint: NSLayoutConstraint!
    
//    var customView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Auth VC here"
        containerView.backgroundColor = UIColor.green
        containerView.clipsToBounds = true
        
//        customView = UIView(frame: CGRect(x: containerView.bounds.size.width / 2 - 50, y: containerView.bounds.size.height / 2 - 50, width: 100, height: 100))
//
//        customView.backgroundColor = UIColor.red
//        containerView.addSubview(customView)
        
//        FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
        let loginButton = FBSDKLoginButton()
        // Optional: Place the button in the center of your view.
        loginButton.center = self.containerView.center;
        containerView.addSubview(loginButton)
        
        print(FBSDKAccessToken.current())
        
//        let customXibView = CustomXibView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        let customXibView = CustomXibView.instanceFromNib()
        customXibView.frame = containerView.bounds
//        customXibView.backgroundColor = UIColor.red
        
        containerView.addSubview(customXibView)
        
        
    }
    @IBOutlet weak var removeViewAction: UIButton!
    
    @IBAction func actionRemoveView(_ sender: Any) {
//        customView.removeFromSuperview()
        if FBSDKAccessToken.current() != nil {
            print("go to main sreen")
        } else {
            print("please login again")
        }
    }
    
}
