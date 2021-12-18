//
//  PackingVC.swift
//  Emergency Aid
//
//  Created by sanjithsethu on 6/8/20.
//  Copyright © 2020 sanjithsethu. All rights reserved.
//

import UIKit

class PackingVC: UIViewController, UITextFieldDelegate {
  let pd = Data()

    var number : numofpeople?
    var num: String = ""
    let deafults = UserDefaults.standard

    @IBOutlet weak var usage_btn: UIButton!
    @IBOutlet weak var lol: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    @IBAction func reset(_ sender: Any) {
        let teenTitansGO = UIAlertController(title: "Confirmation Alert", message: "Confirm if you want reset to the default checklist", preferredStyle: .actionSheet)
        teenTitansGO.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { (_) in
            self.deafults.removeObject(forKey: "Items")
            self.deafults.removeObject(forKey: "removedItems")
            self.deafults.removeObject(forKey: "CompletedItems")
        }))
        teenTitansGO.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        present(teenTitansGO, animated: true, completion: nil)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        lol.layer.cornerRadius = 20
        lol.clipsToBounds = true
        usage_btn.layer.cornerRadius = 20
        usage_btn.clipsToBounds = true
        resetBtn.layer.borderWidth = 1
        resetBtn.layer.borderColor
            = UIColor.red.cgColor
        resetBtn.layer.cornerRadius = 20
        
        

        // Do any additional setup after loading the view.
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return(true)
    }
 
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "identifier"{
            let destVC = segue.destination as! packingListVC
            destVC.NUMBER = num
        }
        
    }
    
}
