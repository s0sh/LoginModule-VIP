//
//  LoginInteractor.swift
//  LoginModule-VIP
//
//  Created by Roman Bigun on 11.06.2023.
//

import Foundation
// MARK: - Belongs to View Controller
protocol LoginInteractorProtocol {
    ///- Calls by ViewController by pressing login button
    func loginAction(login: String, password: String)
}

final class LoginInteractor {
    // MARK: - Privates
    var presenter: LoginPresenterOutput?
    private let networkAdapter = LoginNetworkWorker()
}

extension LoginInteractor: LoginInteractorProtocol {
    
    func loginAction(login: String, password: String) {
        
        let data = LoginDataModel.Fetch.Request(login: login, password: password)
        
        networkAdapter.login(data) { result in
            self.presenter?.handleResponce(result)
        }
    }
}
