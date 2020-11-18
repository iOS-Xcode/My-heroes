//
//  ForgetPasswordViewController.swift
//  My heroes
//
//  Created by Seokhyun Kim on 2020-11-18.
//

import UIKit

class ForgetPasswordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationController?.navigationBar.largeTitleTextAttributes =
//            [NSAttributedString.Key.foregroundColor: UIColor.gray, NSAttributedString.Key.font: UIFont(name: "SFProText-Bold", size: 28) ?? UIFont.systemFont(ofSize: 28)]
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
