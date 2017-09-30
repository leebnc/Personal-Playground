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
    
//    var paramEmail : String?
//    var paramUpdate : Bool?
//    var paramInterval : Double?
    
    override func viewWillAppear(_ animated: Bool) {
//        let ad = UIApplication.shared.delegate as? AppDelegate
//        
//        if let email = ad?.paramEmail {
//            resultEmail.text = email
//        }
//        
//        if let update = ad?.paramUpdate {
//            resultUpdate.text = update == true ? "자동갱신" : "자동갱신 안함"
//        }
//        
//        if let interval = ad?.paramInterval {
//            resultInterval.text = "\(Int(interval))분마다 갱신"
//        }
        
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email") {
            resultEmail.text = email
        }
        
        let update = ud.bool(forKey: "isUpdate")
        resultUpdate.text = (update == true ? "자동갱신" : "자동갱신 안함")
        
        let interval = ud.double(forKey: "interval")
        resultInterval.text = "\(Int(interval))분마다 갱신"
    }
    
    
}

