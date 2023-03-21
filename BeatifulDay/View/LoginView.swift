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
    func actionLoginButton()
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
            textField.backgroundColor = .white
            textField.placeholder = " Insira seu E-mail"
            textField.layer.cornerRadius = 5
            textField.keyboardType = .emailAddress
            textField.layer.borderWidth = 0.4
            return textField
        }()
        
        lazy var passwordTextField: UITextField = {
            let textField = UITextField()
                textField.backgroundColor = .white
                textField.placeholder = " Insira sua senha"
                textField.layer.cornerRadius = 5
                textField.keyboardType = .default
                textField.layer.borderWidth = 0.4
                return textField
            }()
        
        lazy var forgotPassword: UIButton = {
            let action = UIAction(title: "Esqueceu sua senha?") { _ in
                self.tappedForgotbtn()
            }
            let button = UIButton(type: .system, primaryAction: action)
            button.setTitleColor(UIColor(red: 254/255, green: 38/255, blue: 238/255, alpha: 1), for: .normal)
            return button
        }()
        
        lazy var loginButton: UIButton = {
            let action = UIAction(title: "Entrar") { _ in
                self.tappedLoginbtn()
            }
            let button = UIButton(type: .system, primaryAction: action)
            button.layer.cornerRadius = 10
            button.backgroundColor = UIColor(red: 254/255, green: 38/255, blue: 238/255, alpha: 1)
            button.setTitleColor(UIColor.white, for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
            return button
        }()
        
        lazy var signUpContainer: UIView = {
            let view = UIView()
            view.backgroundColor = .white
            return view
        }()
        
        lazy var signUpButton: UIButton = {
        let action = UIAction(title: "Cadastre-se.") { _ in
                self.tappedSignUpbtn()
            }
            let button = UIButton(type: .system, primaryAction: action)
            button.setTitleColor(UIColor(red: 254/255, green: 38/255, blue: 238/255, alpha: 1), for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
            return button
        }()
        
        lazy var signUpLabel: UILabel = {
            let label = UILabel()
            label.text = "Não tem uma conta?"
            label.textColor = UIColor(red: 254/255, green: 38/255, blue: 238/255, alpha: 1)
            label.font = UIFont.boldSystemFont(ofSize: 19)
            return label
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
       
        public func tappedLoginbtn() {
            self.delegate?.actionLoginButton()
        }
        
        func configSubViews() {
            addSubview(logoImage)
            addSubview(userTextField)
            addSubview(passwordTextField)
            addSubview(forgotPassword)
            addSubview(loginButton)
            addSubview(signUpContainer)
//            signUpContainer.addSubview(signUpButton)
//            signUpContainer.addSubview(signUpLabel)
            
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
                make.top.equalTo(logoImage.snp.bottom).offset(10)
                make.height.equalTo(40)
                make.width.equalTo(280)
            }
            passwordTextField.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(userTextField.snp.bottom).offset(20)
                make.height.equalTo(40)
                make.width.equalTo(280)
            }
            forgotPassword.snp.makeConstraints { make in
                make.top.equalTo(passwordTextField.snp.bottom).offset(10)
                make.trailing.equalTo(passwordTextField.snp.trailing)
            }
            loginButton.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(forgotPassword.snp.bottom).offset(10)
                make.height.equalTo(40)
                make.width.equalTo(280)
            }
            
            signUpContainer.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(loginButton.snp.bottom).offset(10)
                make.width.equalTo(200)
//                make.
            }
            
//            signUpLabel.snp.makeConstraints { make in
//                make.centerX.equalToSuperview()
//                make.top.equalTo(loginButton.snp.bottom).offset(60)
//            }
//
//            signUpButton.snp.makeConstraints { make in
//                make.leading.equalTo(signUpLabel.snp.trailing).offset(3)
//                make.top.equalTo(loginButton.snp.bottom).offset(60)
//            }
        }
    }

