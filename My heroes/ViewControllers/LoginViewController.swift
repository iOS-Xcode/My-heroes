//
//  LoginViewController.swift
//  My heroes
//
//  Created by Seokhyun Kim on 2020-10-28.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailMessage: UILabel! {
        didSet {
            emailMessage.text = ""
        }
    }
    @IBOutlet weak var emailTextField: UITextField! {
        didSet {
            emailTextField.layer.cornerRadius = 10
            emailTextField.layer.borderWidth = 0.5
            emailTextField.text = ""
            //For make a left space in TextField
            emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: emailTextField.frame.height))
            emailTextField.leftViewMode = .always
        }
    }
    
    @IBOutlet weak var passwordMessage: UILabel! {
        didSet {
            passwordMessage.text = ""
        }
    }
    
    @IBOutlet weak var passwordTextField: UITextField! {
        didSet {
            passwordTextField.layer.cornerRadius = 10
            passwordTextField.layer.borderWidth = 0.5
            passwordTextField.text = ""
            
            //For make a left space in TextField
            passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: passwordTextField.frame.height))
            passwordTextField.leftViewMode = .always
            
            //SecureButton in TextField
            let secureButton  = UIButton(type: .custom)
            secureButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -16, bottom: 0, right: 0)
            secureButton.frame = CGRect(x:0, y:0, width:30, height:30)
            secureButton.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
            //secureButton.isSelected = true
            secureButton.tintColor = .darkGray
            passwordTextField.rightViewMode = .always
            passwordTextField.rightView = secureButton
            passwordTextField.isSecureTextEntry = true
            secureButton.addTarget(self, action: #selector(switchSecureButton), for: .touchUpInside)
        }
    }
    
    @objc fileprivate func switchSecureButton(sender : UIButton) {
        //print(sender)
        if sender.isSelected {
            sender.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
            sender.isSelected = false
            passwordTextField.isSecureTextEntry = true
        } else {
            sender.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            sender.isSelected = true
            passwordTextField.isSecureTextEntry = false
        }
    }
    
    @IBOutlet weak var logInButton: UIButton! {
        didSet {
            logInButton.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet weak var signUpButton: UIButton! {
        didSet {
            signUpButton.layer.borderColor = UIColor.red.cgColor
            signUpButton.layer.cornerRadius = 10
            signUpButton.layer.borderWidth = 0.5
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

}

