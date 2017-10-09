//
//  ViewController.swift
//  Delegate-TextField
//
//  Created by Lee Choongwon on 2017. 10. 8..
//  Copyright © 2017년 Choongwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

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
        self.tf.clearButtonMode = UITextFieldViewMode.whileEditing
        
        // Delegate 지정
        self.tf.delegate = self
    }
    
    // 텍스트필드의 편집을 시작할 때 호출
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 편집이 시작됩니다.")
        return true
    }
   
    // 텍스트 필드의 편집이 시작된 후 호출
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 시작되었습니다.")
    }
    
    // 텍스트 필드의 내용이 삭제될 때 호출
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 내용이 삭제됩니다.")
        return true
    }
    
    // 텍스트 필드의 내용이 변결될 때 호출
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("텍스트 필드에 \(string)이/가 입력되었습니다")
        
        if Int(string) == nil {
            return true
        } else {
            return false
        }
    }
    
    // 텍스트 필드의 리턴키가 눌러졌을 때 호출
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 리턴키가 눌러졌습니다.")
        return true
    }
    
    // 텍스트 필드의 편집이 종료될 때 호출
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 편집이 종료됩니다.")
        return true
    }
    
    // 텍스트 필드의 편집이 종료되었을 때 호출
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        print("텍스트 필드의 편집이 종료되었습니다.")
    }
    
    @IBAction func comfirm(_ sender: Any) {
        self.tf.resignFirstResponder()
    }
    
    @IBAction func input(_ sender: Any) {
        self.tf.becomeFirstResponder()
    }
}

