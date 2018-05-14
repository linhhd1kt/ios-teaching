//
//  Api.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/14/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import Alamofire

// Tạo một singleton
final class Api {
    
    static let shared = Api()

    let baseUrl = "http://api.baongocstore.com/v1/"
    var token = ""
    
    private init() {

    }
    
    func login(email: String, password: String, callback: @escaping (DataResponse<Any>)->()) {
        let path = "auth/login"
        let url = baseUrl + path
        
        let paramDict:[String: Any] = [
            "email": email,
            "password": password,
            ]

        Alamofire.request(url, method: .post, parameters: paramDict, encoding: URLEncoding.default).responseJSON { (data) in
            
            if let result = data.result.value as? NSDictionary {
                if let resultData = result["data"] as? NSDictionary {
                    if let token = resultData["access_token"] {
                        print(token)
                        if token is String {
                            self.token = token as! String
                        }
                        
                    }
                }
            
            }
            
            
           callback(data)
        }
    }
    
}

