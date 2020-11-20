//
//  BasedNavigationViewController.swift
//  My heroes
//
//  Created by Seokhyun Kim on 2020-11-18.
//

import UIKit

class BasedNavigationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes =
            [NSAttributedString.Key.foregroundColor: UIColor(hex: "#808080FF")!, NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 24)!]
    }
}
