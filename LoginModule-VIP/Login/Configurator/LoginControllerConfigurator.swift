//
//  LoginControllerConfigurator.swift
//  LoginModule-VIP
//
//  Created by Roman Bigun on 11.06.2023.
//

import Foundation

struct LoginControllerConfigurator {
    static func build() -> LoginViewController {
        let sourceController = LoginViewController()
        let interactor = LoginInteractor()
        let presenter = LoginPresenter(view: sourceController, interactor: interactor)
        interactor.presenter = presenter
        sourceController.presenter = presenter
        return sourceController
    }
}
