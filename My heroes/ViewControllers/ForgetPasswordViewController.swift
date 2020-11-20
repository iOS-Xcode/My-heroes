//
//  ForgetPasswordViewController.swift
//  My heroes
//
//  Created by Seokhyun Kim on 2020-11-18.
//

import UIKit

class ForgetPasswordViewController: BasedNavigationViewController {

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
    
    @IBOutlet weak var sendButton: UIButton! {
        didSet {
            sendButton.layer.cornerRadius = 10
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = "Forget password"
    }

}
