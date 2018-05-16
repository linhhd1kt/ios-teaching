//
//  Api.swift
//  ios-teaching
//
//  Created by Ha Linh on 5/14/18.
//  Copyright © 2018 Ha Linh. All rights reserved.
//

import Alamofire
import SwiftyJSON

// Tạo một singleton
final class Api {
    
    static let shared = Api()

    let baseUrl = "http://api.baongocstore.com/v1/"
    var token = ""
    
    private init() {}
    
    // sample call back
    func tellHello(callback: @escaping (String) -> ()) {
        callback("hello")
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
    
    func login(email: String, password: String, callback: @escaping (String, Bool)->()) {
        
        let path = "auth/login"
        let url = baseUrl + path
        
        let paramDict:[String: Any] = [
            "email": email,
            "password": password,
            ]
        
        Alamofire.request(url, method: .post, parameters: paramDict, encoding: URLEncoding.default).responseJSON { (data) in
            
            switch data.result {
            case .success(let value):
                let json = JSON(value)
                let statusCode = json["status_code"].intValue
                
                switch statusCode {
                case 200:
                    self.token = json["data"]["access_token"].stringValue
                    callback("", true)
                default:
                    let message = json["message"].stringValue
                    callback(message , false)
                }
                
            case .failure(let error):
                callback(error.localizedDescription , false)
            }
            
            
            // old soure if not user swifty json
//            if let result = data.result.value as? NSDictionary {
//                if let resultData = result["data"] as? NSDictionary {
//                    if let token = resultData["access_token"] {
//                        print(token)
//                        if token is String {
//                            self.token = token as! String
//                            callback(self.token , "", true)
//                        } else {
//                            callback("" , "login error!!!", false)
//                        }
//
//                    } else {
//                        callback("" , "login error!!!", false)
//                    }
//                } else {
//                    callback("" , "login error!!!", false)
//                }
//
//            } else {
//                callback("" , "login error!!!", false)
//            }
        }
    }
    
}

