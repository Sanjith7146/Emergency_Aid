//
//  NewViewController.swift
//  Emergency Aid
//
//  Created by Tanish Jayachandran on 1/9/20.
//  Copyright © 2020 sanjithsethu. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

       override func viewDidLoad() {
            super.viewDidLoad()
        self.title = "Emergency aid"
            // Do any additional setup after loading the view.
            let timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
        }
        @objc func timeToMoveOn() {
            self.performSegue(withIdentifier: "auto", sender: self)
        }
        


    }

