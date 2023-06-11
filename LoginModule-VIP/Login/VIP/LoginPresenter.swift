//
//  LoginPresenter.swift
//  LoginModule-VIP
//
//  Created by Roman Bigun on 11.06.2023.
//

import Foundation

protocol LoginPresenterProtocol {
    func handleResponce(_ result: LoginDataModel.Fetch.Responce)
}

final class LoginPresenter {
    private let view: LoginViewProtocol
    
    init(view: LoginViewProtocol) {
        self.view = view
    }
    
}

extension LoginPresenter: LoginPresenterProtocol {
    func handleResponce(_ result: LoginDataModel.Fetch.Responce) {
        let viewModel = LoginDataModel.Fetch.ViewModel(id: result.id,
                                                       name: result.name ,
                                                       sureName: result.sureName,
                                                       phoneNumber: result.phoneNumber)
        view.loginResult(viewModel)
    }
    
}
