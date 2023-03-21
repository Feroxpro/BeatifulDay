//
//  ViewController.swift
//  BeatifulDay
//
//  Created by Felipe Domingos on 20/03/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    
    override func loadView() {
        self.view = self.loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginView.delegate(delegate: self)
        view.backgroundColor =  UIColor(red: 222/255, green: 161/255, blue: 161/255, alpha: 1)
    }


}

extension LoginViewController: LoginScreenProtocol {
    func actionForgotButton() {
//        let forgotViewController = ForgotViewController()
//        self.navigationController?.pushViewController(forgotViewController, animated: true)
    }
    
    func actionSignUpButton() {
        print("certao")
//        let signUpViewController = SignUpViewController()
//        self.navigationController?.pushViewController(signUpViewController, animated: true)
    }
}
