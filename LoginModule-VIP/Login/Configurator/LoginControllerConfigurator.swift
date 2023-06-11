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
        let presenter = LoginPresenter(view: sourceController)
        let interactor = LoginInteractor(presenter: presenter)
        sourceController.interactor = interactor
        return sourceController
    }
}
