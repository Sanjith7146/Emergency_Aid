//
//  ViewController.swift
//  Emergency Aid
//
//  Created by sanjithsethu on 5/8/20.
//  Copyright © 2020 sanjithsethu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Contacts: UIButton!
    @IBOutlet weak var Packing: UIButton!
    @IBOutlet weak var corona: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Emergency Aid"
        Contacts.layer.cornerRadius = 20
        Contacts.clipsToBounds = true
        Packing.layer.cornerRadius = 20
        Packing.clipsToBounds = true
        corona.layer.cornerRadius = 20
        corona.clipsToBounds = true
        
    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Credits", style: .done, target: self, action: #selector(lol))
           
            
        }
        @objc func lol () {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "BrandVC")
        self.present(vc, animated: true)            }


}

