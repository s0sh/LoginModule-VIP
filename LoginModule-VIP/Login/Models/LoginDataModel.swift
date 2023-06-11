//
//  LoginDataModel.swift
//  LoginModule-VIP
//
//  Created by Roman Bigun on 11.06.2023.
//

import Foundation

struct LoginDataModel {
    
    struct Fetch {
        
        struct Request {
            let login: String
            let password: String
        }
        
        struct Responce {
            let id: Int
            let name: String
            let sureName: String
            let phoneNumber: String
        }
        
        struct ViewModel {
            let id: Int
            let name: String
            let sureName: String
            let phoneNumber: String
        }
    }
    
}
