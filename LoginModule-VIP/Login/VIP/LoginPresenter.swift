//
//  LoginPresenter.swift
//  LoginModule-VIP
//
//  Created by Roman Bigun on 11.06.2023.
//

import Foundation

protocol LoginPresenterProtocol {
    func handleResponce(_ isSuccess: Bool)
}

final class LoginPresenter {
    private let view: LoginViewProtocol
    
    init(view: LoginViewProtocol) {
        self.view = view
    }
    
}

extension LoginPresenter: LoginPresenterProtocol {
    
    // MARK: - make responce watever needed instead of 'isSuccess'.
    // Something as Result<SomeModel, Error> shoould be here
    
    func handleResponce(_ isSuccess: Bool) {
        // MARK: - Send handeled result to a view
        view.loginResult(isSuccess)
    }
    
}
