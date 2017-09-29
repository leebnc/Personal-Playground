//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by Lee Choongwon on 2017. 9. 29..
//  Copyright © 2017년 Choongwon. All rights reserved.
//

import UIKit

class ResultViewController : UIViewController {
    
    @IBOutlet var resultEmail: UILabel!
    
    @IBOutlet var resultUpdate: UILabel!
    
    @IBOutlet var resultInterval: UILabel!
    
    // 1. Email값을 받을 변수
    var paramEmail : String = ""
    
    // 2. Update값을 받을 변수
    var paramUpdate : Bool = false
    
    // 3. Interval값을 받을 변수
    var paramInterval : Double = 0
    
    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신 안함")
        self.resultInterval.text = "\(Int(paramInterval))분마다 갱신"
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)ç
    }
    
}
