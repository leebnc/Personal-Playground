//
//  ViewController.swift
//  Scene-ManualSegue
//
//  Created by Lee Choongwon on 2017. 9. 28..
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


    @IBAction func wind(_ sender: Any) {
        //세그웨이를 실행한다
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }
}

