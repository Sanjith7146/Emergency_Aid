//
//  packingListVC.swift
//  Emergency Aid
//
//  Created by sanjithsethu on 6/8/20.
//  Copyright © 2020 sanjithsethu. All rights reserved.
//

import UIKit


class packingListVC: UITableViewController {
    let pd = Data()
    var lol : String = "Packing Needed"
    var l = " sets of"
    let defaults = UserDefaults.standard
    var NUMBER : String?
    var EssentialItems = [String]()
    var completedReminders: [String] = []
    @IBOutlet weak var barbutton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        if defaults.object(forKey: "Items") == nil{
            EssentialItems = ["Torchlight without batteries", " Few Batteries", "Essential personal medication", "Copies of important documents", "Whistle", "First aid kit", "Childcare/special care supplies", "N95 Mask", "Hand Sanitiser ", "Sugical mask", "A list of personal contact numbers", "Cash", "Bottled water and dry foodstuff", "A set of spare clothing", "A list of emergency numbers"]
        }else{
            EssentialItems = defaults.stringArray(forKey: "Items") ?? [String]()
        }
        if defaults.object(forKey: "CompletedItems") == nil{
            completedReminders = []
        }else{
            completedReminders = defaults.stringArray(forKey: "CompletedItems") ?? [String]()
        }
    
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0{
            return EssentialItems.count
        }else {
            return completedReminders.count
        }
            

      
        
        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            completedReminders.insert(EssentialItems[indexPath.row], at: 0)
            EssentialItems.remove(at: indexPath.row)
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryType = .checkmark
            defaults.set(completedReminders, forKey: "CompletedItems")
            defaults.set(EssentialItems, forKey: "Items")
            
            tableView.moveRow(at: indexPath, to: IndexPath(row: 0, section: 1))
        }
        if indexPath.section == 1 {
            EssentialItems.insert(completedReminders[indexPath.row], at: 0)
            completedReminders.remove(at: indexPath.row)
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryType = .none
            defaults.set(completedReminders, forKey: "CompletedItems")
            defaults.set(EssentialItems, forKey: "Items")
            tableView.moveRow(at: indexPath, to: IndexPath(row: 0, section: 0))
        }

    }

    @IBAction func createNewItem(_ sender: Any) {
        let alert = UIAlertController(title: "New Item", message: "Create a new item to pack", preferredStyle: .alert)
            alert.addTextField()
            alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { (_) in
                let alertText = alert.textFields!.first!.text!
                if alertText != "" {
                    self.EssentialItems.append(alertText)
                    print(self.EssentialItems)
                    

                    
                    self.tableView.reloadData()
                    print(self.EssentialItems)
                    self.defaults.set(self.EssentialItems, forKey: "Items")
                }
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        if indexPath.section == 0 {
            cell.textLabel?.text = EssentialItems[indexPath.row]
            cell.accessoryType = .none
            cell.textLabel?.font = UIFont(name: "Avenir", size: 20)

        } else {
            cell.textLabel?.text = completedReminders[indexPath.row]
            cell.accessoryType = .checkmark
            cell.textLabel?.font = UIFont(name: "Avenir", size: 20)
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
           if section == 0 {
               return lol
            
           } else {
               return "Completed packing"
           }
       }



    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            if indexPath.section == 0 {
                EssentialItems.remove(at: indexPath.row)
            } else {
                completedReminders.remove(at: indexPath.row)
            }
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
