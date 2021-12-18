//
//  BrandVC.swift
//  Emergency Aid
//
//  Created by sanjithsethu on 17/8/20.
//  Copyright © 2020 sanjithsethu. All rights reserved.
//

import UIKit

class BrandVC: UIViewController {


    @IBOutlet var TapGesture: UITapGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Emergency Aid"
        // Do any additional setup after loading the view.
    }
    @IBAction func tapgesture(_ sender: Any) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewController(withIdentifier: "Nav")
    self.present(vc, animated: true)            }


}
    
    

