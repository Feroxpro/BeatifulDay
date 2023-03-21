//
//  LoginView.swift
//  BeatifulDay
//
//  Created by Felipe Domingos on 20/03/23.
//

import UIKit
import SnapKit

protocol LoginScreenProtocol: AnyObject {
    
    func actionSignUpButton()
    func actionForgotButton()
}

    class LoginView: UIView {
        
        weak var delegate:LoginScreenProtocol?
        func delegate(delegate:LoginScreenProtocol?){
            self.delegate = delegate
        }

        
        lazy var logoImage: UIImageView = {
            let img = UIImageView()
            img.image = UIImage(named: "logo BD")
            return img
        }()
        
        lazy var userTextField: UITextField = {
        let textField = UITextField()
            return textField
        }()
        
        lazy var passwordTextField: UITextField = {
            let textField = UITextField()
            return textField
        }()
        
        lazy var forgotPassword: UIButton = {
            let action = UIAction(title: "Esqueceu sua senha?") { _ in
                self.tappedForgotbtn()
            }
            let button = UIButton(type: .system, primaryAction: action)
            return button
        }()
        
        lazy var loginButton: UIButton = {
            let button = UIButton()
            button.backgroundColor = .orange
            button.setTitle("Login", for: .normal)
            button.layer.cornerRadius = 10
            return button
        }()
        
        lazy var signUpButton: UIButton = {
            let action = UIAction(title: "Nao tem uma conta? Cadastre-se.") { _ in
                self.tappedSignUpbtn()
            }
            let button = UIButton(type: .system, primaryAction: action)
            return button
        }()

        override init(frame: CGRect) {
            super.init(frame: frame)
            configSubViews()
            setupConstraints()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        public func tappedSignUpbtn() {
            self.delegate?.actionSignUpButton()
        }
        
        public func tappedForgotbtn() {
            self.delegate?.actionForgotButton()
        }
        
        func configSubViews() {
            addSubview(logoImage)
            addSubview(userTextField)
            addSubview(passwordTextField)
            addSubview(forgotPassword)
            addSubview(loginButton)
            addSubview(signUpButton)
        }
        
        func setupConstraints() {

            logoImage.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalToSuperview().offset(60)
                make.width.equalTo(400)
                make.height.equalTo(250)
            }
            userTextField.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(logoImage.snp.bottom).offset(40)
                make.height.equalTo(30)
                make.width.equalTo(280)
            }
            passwordTextField.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(userTextField.snp.bottom).offset(30)
                make.height.equalTo(30)
                make.width.equalTo(280)
            }
            forgotPassword.snp.makeConstraints { make in
                make.top.equalTo(passwordTextField.snp.bottom).offset(5)
                make.trailing.equalTo(passwordTextField.snp.trailing)
            }
            loginButton.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(forgotPassword.snp.bottom).offset(60)
                make.width.equalTo(120)
            }
            signUpButton.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(loginButton.snp.bottom).offset(60)
            }
        }
    }

