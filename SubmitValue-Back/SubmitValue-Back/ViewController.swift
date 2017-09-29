//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by Lee Choongwon on 2017. 9. 29..
//  Copyright © 2017년 Choongwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultEmail: UILabel!

    @IBOutlet var resultUpdate: UILabel!

    @IBOutlet var resultInterval: UILabel!
    
    var paramEmail : String?
    var paramUpdate : Bool?
    var paramInterval : Double?
    
    override func viewWillAppear(_ animated: Bool) {
        if let email = paramEmail {
            resultEmail.text = email
        }
        
        if let update = paramUpdate {
            resultUpdate.text = update == true ? "자동갱신" : "자동갱신 안함"
        }
        
        if let interval = paramInterval {
            resultInterval.text = "\(Int(interval))분마다 갱신"
        }
    }
    
    
}

