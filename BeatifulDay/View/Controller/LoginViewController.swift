//
//  ViewController.swift
//  BeatifulDay
//
//  Created by Felipe Domingos on 20/03/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginScreenView()
    
    override func loadView() {
        self.view = self.loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginView.delegate(delegate: self)
    }
}

extension LoginViewController: LoginScreenProtocol {
    func actionLoginButton() {
        let homeViewController = HomeViewController()
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    func actionForgotButton() {
        print("certao2")
        //        let forgotViewController = ForgotViewController()
        //        self.navigationController?.pushViewController(forgotViewController, animated: true)
    }
    
    func actionSignUpButton() {
        print("certao3")
        //        let signUpViewController = SignUpViewController()
        //        self.navigationController?.pushViewController(signUpViewController, animated: true)
    }
}
