//
//  ViewController.swift
//  Msg-AlertController
//
//  Created by Lee Choongwon on 2017. 10. 7..
//  Copyright © 2017년 Choongwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var result: UILabel!

    @IBAction func alert(_ sender: Any) {
        
        let alert = UIAlertController(title: "선택", message: "항목을 선택해 주세요", preferredStyle: .alert)
        /* 
         actionsheet 는 .actionsheet 
         alert 는 .alert
        */
        
        // 취소버튼
        let cancel = UIAlertAction(title: "취소", style: .cancel) {
            (_) in
            self.result.text = "취소 버튼을 클릭했습니다"
        }
        
        // 확인버튼
        let ok = UIAlertAction(title: "확인", style: .default) {
            (_) in
            self.result.text = "확인 버튼을 클릭했습니다."
        }
        
        // 실행버튼
        let exec = UIAlertAction(title: "실행", style: .destructive) {
            (_) in
            self.result.text = "실행 버튼을 클릭했습니다."
        }
        
        // 중지버튼
        let stop = UIAlertAction(title: "중지", style: .default) {
            (_) in
            self.result.text = "중지 버튼을 클릭했습니다."
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        
        self.present(alert, animated: false)
    }
    
    @IBAction func login(_ sender: Any) {
        let title = "iTunes Store 에 로그인"
        let message = "사용자의 Apple ID andrew.c.lee94@gmail.com의 암호를 입력하십시오"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default) {
            (_) in
            // 확인 버튼을 클릭했을 떄 처리할 내용
            if let tf = alert.textFields?[0] {
                print("입력된 값은 \( tf.text! )입니다.")
            } else {
                print("입력된 값이 없습니다.")
            }
            
        }
        // 텍스트 필드 추가
        alert.addTextField(configurationHandler: { (tf) in
            // 텍스트필드의 속성
            tf.placeholder = "암호" // 안내메세지
            tf.isSecureTextEntry = true // 비밀번호 처리
        })
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        self.present(alert, animated: false)
    }
    
    @IBAction func auth(_ sender: Any) {
        let msg = "로그인"
        let alert = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default) {
            (_) in
            // 확인 버튼을 클릭했을 때 처리할 내용
            let loginId = alert.textFields?[0].text
            let loginPw = alert.textFields?[1].text
            
            if loginId == "andrew.c.lee94@gmail.com"
                && loginPw == "helloworld" {
                self.result.text = "인증되었습니다."
            } else {
                self.result.text = "인증에 실패하였습니다."
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        // 텍스트필드 추가
        alert.addTextField(configurationHandler: {
            (tf) in
            tf.placeholder = "아이디"
            tf.isSecureTextEntry = false
        })
        alert.addTextField(configurationHandler: {
            (tf) in
            tf.placeholder = "비밀번호"
            tf.isSecureTextEntry = true
        })
        
        self.present(alert, animated: false)
    }
    
}

