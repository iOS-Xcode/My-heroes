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
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

