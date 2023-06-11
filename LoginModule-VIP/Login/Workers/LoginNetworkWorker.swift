//
//  LoginNetworkWorker.swift
//  LoginModule-VIP
//
//  Created by Roman Bigun on 11.06.2023.
//

import Foundation

struct LoginNetworkWorker {
    func login(_ creds: LoginDataModel.Fetch.Request, completion: (LoginDataModel.Fetch.Responce) -> Void) {
        let responce = LoginDataModel.Fetch.Responce(id: 1,
                                                     name: "Will",
                                                     sureName: "Smith",
                                                     phoneNumber: "+1 233 453 11")
        completion(responce)
    }
}
