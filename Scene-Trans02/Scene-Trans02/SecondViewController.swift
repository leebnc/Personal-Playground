//
//  SecondViewController.swift
//  Scene-Trans02
//
//  Created by Lee Choongwon on 2017. 9. 26..
//  Copyright © 2017년 Choongwon. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController{
    @IBAction func back(_ sender: Any) {
        
        self.presentingViewController?.dismiss(animated: true)
    }
    
    
    @IBAction func back2(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
}
