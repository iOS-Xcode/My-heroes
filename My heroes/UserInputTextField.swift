//
//  UserInputTextField.swift
//  My heroes
//
//  Created by Seokhyun Kim on 2020-10-28.
//

import Foundation
import UIKit

@IBDesignable
class UserInputTextField : UITextField {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable var borderColor: UIColor = UIColor.gray {
        didSet {
            layer.borderColor = borderColor.cgColor

        }
    }
    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet {
            layer.borderWidth = borderWidth

        }
    }
}
