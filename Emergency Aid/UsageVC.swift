//
//  UsageVC.swift
//  Emergency Aid
//
//  Created by sanjithsethu on 7/8/20.
//  Copyright © 2020 sanjithsethu. All rights reserved.
//

import UIKit

class UsageVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var items: UIPickerView!
    @IBOutlet weak var usage_label: UILabel!
    @IBOutlet weak var photoView: UIImageView!
    
    let pd = Data()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return pd.essentialItems.count
    }
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return pd.essentialItems[row]
       }
       func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           usage_label.text = pd.usage[row]
           photoView.image = UIImage(named: pd.images[row])
           
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items.dataSource = self
        items.delegate = self
        usage_label.text = pd.usage[0]
        photoView.image = UIImage(named: pd.images[0])


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
