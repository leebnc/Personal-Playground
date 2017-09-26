//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by Lee Choongwon on 2017. 9. 22..
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


    @IBAction func moveNext(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else{
            return
        }
        
        uvc.modalTransitionStyle = UIModalTransitionStyle.partialCurl
        
        self.present(uvc, animated: true)
    }
}

