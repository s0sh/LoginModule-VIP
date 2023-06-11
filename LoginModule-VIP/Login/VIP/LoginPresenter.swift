//
//  LoginPresenter.swift
//  LoginModule-VIP
//
//  Created by Roman Bigun on 11.06.2023.
//

import Foundation

protocol LoginPresenterOutput {
    func handleResponce(_ result: LoginDataModel.Fetch.Responce)
}

protocol LoginPresenterInput {
    func loginWith(login: String, password: String)
}

final class LoginPresenter {
    
    private let view: LoginViewProtocol
    private let interactor: LoginInteractorProtocol
    
    init(view: LoginViewProtocol, interactor: LoginInteractorProtocol) {
        self.view = view
        self.interactor = interactor
    }
    
}

extension LoginPresenter: LoginPresenterInput {
    func loginWith(login: String, password: String) {
        interactor.loginAction(login: login, password: password)
    }
}

extension LoginPresenter: LoginPresenterOutput {
    func handleResponce(_ result: LoginDataModel.Fetch.Responce) {
        let viewModel = LoginDataModel.Fetch.ViewModel(id: result.id,
                                                       name: result.name ,
                                                       sureName: result.sureName,
                                                       phoneNumber: result.phoneNumber)
        view.loginResult(viewModel)
    }
    
}
