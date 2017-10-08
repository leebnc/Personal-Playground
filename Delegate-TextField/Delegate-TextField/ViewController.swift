//
//  ViewController.swift
//  Delegate-TextField
//
//  Created by Lee Choongwon on 2017. 10. 8..
//  Copyright © 2017년 Choongwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tf: UITextField!
    
    override func viewDidLoad() {
        self.tf.borderStyle = UITextBorderStyle.line
        self.tf.backgroundColor = UIColor(white: 0.87, alpha: 1.0)
        self.tf.contentVerticalAlignment = .center
        self.tf.contentHorizontalAlignment = .center
        self.tf.layer.borderColor = UIColor.darkGray.cgColor
        self.tf.layer.borderWidth = 2.0
        
        
        
        self.tf.placeholder = "값을 입력하세요"
        self.tf.keyboardType = UIKeyboardType.alphabet
        self.tf.keyboardAppearance = UIKeyboardAppearance.dark
        self.tf.returnKeyType = UIReturnKeyType.join
        self.tf.enablesReturnKeyAutomatically = true
        self.tf.spellCheckingType = UITextSpellCheckingType.no
        self.tf.autocorrectionType = UITextAutocorrectionType.no
        
    }
}

