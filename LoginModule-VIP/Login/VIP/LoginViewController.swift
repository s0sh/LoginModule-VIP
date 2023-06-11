//
//  ViewController.swift
//  LoginModule-VIP
//
//  Created by Roman Bigun on 11.06.2023.
//

import UIKit

protocol LoginViewProtocol {
    func loginResult(_ isSuccess: Bool)
}

class LoginViewController: BaseController {
    
    var interactor: LoginInteractorProtocol?
    
    private let authBlock = CSAuthorizationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
}

extension LoginViewController {
    
    override func setupViews() {
        super.setupViews()
        view.addView(authBlock)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            authBlock.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            authBlock.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            authBlock.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        authBlock.buttonPressedCallback = { [weak self] (email, password) in
            self?.interactor?.loginAction(login: email, password: password)
        }
        
        authBlock.mainButtonPressedCallback = {
            // TODO: - Rout to next screen
        }
    }
}

extension LoginViewController: LoginViewProtocol {
    
    // MARK: - is called by Presenter
    func loginResult(_ isSuccess: Bool) {
        print("\(isSuccess)")
    }
    
}

