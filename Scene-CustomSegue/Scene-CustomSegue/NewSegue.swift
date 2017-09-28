//
//  NewSegue.swift
//  Scene-CustomSegue
//
//  Created by Lee Choongwon on 2017. 9. 28..
//  Copyright © 2017년 Choongwon. All rights reserved.
//

import UIKit
class NewSeque: UIStoryboardSegue {
    override func perform() {
        let srcUVC = self.source
        let destUVC = self.destination
        
        UIView.transition(from: srcUVC.view, to: destUVC.view, duration: 2, options: .transitionCurlDown)
        
    }
}
