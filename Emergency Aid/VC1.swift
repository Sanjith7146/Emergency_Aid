//
//  VC1.swift
//  Emergency Aid
//
//  Created by sanjithsethu on 5/8/20.
//  Copyright © 2020 sanjithsethu. All rights reserved.
//

import UIKit

var indexPath : IndexPath = []

class VC1: UIViewController {
    let pd = Data()
    var filteredCountries : [BarryAllen] = []
    var selectedRow : Int?
    fileprivate let application = UIApplication.shared
    @IBOutlet weak var caller: UIButton!
    @IBOutlet weak var caller2: UIButton!
    @IBOutlet weak var caller3: UIButton!
    @IBOutlet weak var policeLabel: UILabel!
    @IBOutlet weak var policeNum: UILabel!
    @IBOutlet weak var firelabel: UILabel!
    @IBOutlet weak var fireNum: UILabel!
    @IBOutlet weak var ambLabel: UILabel!
    @IBOutlet weak var ambNum: UILabel!
    @IBAction func callerPolice(_ sender: Any) {

        if let phoneURL = URL(string: "tell://\(filteredCountries[selectedRow!].police)"){
            if application.canOpenURL(phoneURL){
                application.open(phoneURL, options: [:], completionHandler: nil)
            }
        }
    }
    
    @IBAction func callerFire(_ sender: Any) {
        if let phoneURL = URL(string: "tell://\(filteredCountries[selectedRow!].fire)"){
            if application.canOpenURL(phoneURL){
                application.open(phoneURL, options: [:], completionHandler: nil)
            }
        }
    }
    @IBAction func callerAmb(_ sender: Any) {
        if let phoneURL = URL(string: "tell://\(filteredCountries[selectedRow!].ambulance)"){
            if application.canOpenURL(phoneURL){
                application.open(phoneURL, options: [:], completionHandler: nil)
            }
        }
    }
    
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        policeNum.layer.cornerRadius = 30
        policeLabel.layer.cornerRadius = 30
        fireNum.layer.cornerRadius = 30
        firelabel.layer.cornerRadius = 30
        ambNum.layer.cornerRadius = 30
        ambLabel.layer.cornerRadius = 30
        self.title = filteredCountries[selectedRow!].country
        policeNum.text = filteredCountries[selectedRow!].police
        fireNum.text = filteredCountries[selectedRow!].fire
        ambNum.text = filteredCountries[selectedRow!].ambulance
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
