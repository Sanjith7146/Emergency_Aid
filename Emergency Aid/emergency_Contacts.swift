//
//  emergency_Contacts.swift
//  Emergency Aid
//
//  Created by sanjithsethu on 5/8/20.
//  Copyright © 2020 sanjithsethu. All rights reserved.
//

import UIKit

class emergency_Contacts: UITableViewController, UISearchBarDelegate {

    var filteredData: [BarryAllen] = []
   
    let Country: [BarryAllen] = [BarryAllen(country: "Afghanistan", police: "119", ambulance: "112", fire: "119"), BarryAllen(country: "Albania", police: "19", ambulance: "17", fire: "18"), BarryAllen(country: "Algeria", police: "17", ambulance: "21606666", fire: "14"), BarryAllen(country: "American Samoa", police: "911", ambulance: "911", fire: "911"), BarryAllen(country: "Andorra", police: "110", ambulance: "118", fire: "118"), BarryAllen(country: "Angola", police: "110", ambulance: "118", fire: "118"), BarryAllen(country: "Antigua & Barbuda", police: "999, 911", ambulance: "999, 911", fire: "999, 911"), BarryAllen(country: "Argentina", police: "101", ambulance: "101", fire: "107"), BarryAllen(country: "Armenia", police: "103", ambulance: "103", fire: "103"), BarryAllen(country: "Aruba", police: "911", ambulance: "911", fire: "911"), BarryAllen(country: "Ascension Island", police: "6666", ambulance: "6000", fire: "911"), BarryAllen(country: "Australia", police: "000 (112 on cell phone)", ambulance: "000 (112 on cell phone)", fire: "000 (112 on cell phone)"), BarryAllen(country: "Austria", police: "  ", ambulance: "112, 122", fire: "  "), BarryAllen(country: "Azerbaijan (Baku)", police: "2", ambulance: "3", fire: "1"), BarryAllen(country: "Bahamas", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Bahrain", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Bali", police: "  ", ambulance: "112", fire: "118"), BarryAllen(country: "Bangladesh (Dhaka)", police: "866 551‐3", ambulance: "199", fire: "9 555 555"), BarryAllen(country: "Barbados", police: "112, 119", ambulance: "115, 119", fire: "113, 119"), BarryAllen(country: "Belgium", police: " ", ambulance: "112 (cell)/101", fire: " "), BarryAllen(country: "Belarus", police: "2", ambulance: "3", fire: "1"), BarryAllen(country: "Belize", police: "  ", ambulance: "911", fire: "  "), BarryAllen(country: "Benin", police: "  ", ambulance: "local numbers only", fire: "  "), BarryAllen(country: "Bermuda", police: "  ", ambulance: "911", fire: "  "), BarryAllen(country: "Bhutan", police: "113", ambulance: "110", fire: "112"), BarryAllen(country: "Bolivia", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Bonaire", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Bosnia‐Herzegovina", police: "122", ambulance: "124", fire: "123"), BarryAllen(country: "Botswana", police: " ", ambulance: "997, 911", fire: " "), BarryAllen(country: "Brazil", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Bosnia", police: "92", ambulance: "94", fire: "93"), BarryAllen(country: "British Virgin Islands", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Brunei", police: "993", ambulance: "991", fire: "995"), BarryAllen(country: "Bulgaria", police: "166", ambulance: "150", fire: "160"), BarryAllen(country: "Burkina Faso", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Burma/Myanmar", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Burundi", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Cambodia", police: "117", ambulance: "119", fire: "118"), BarryAllen(country: "Cameroon", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Canada", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Canary Islands", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Cape Verde", police: "132", ambulance: "130", fire: "131"), BarryAllen(country: "Cayman Islands", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Central African Republic", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Chad", police: "17", ambulance: "", fire: "18"), BarryAllen(country: "Chile", police: "133", ambulance: "131", fire: "132"), BarryAllen(country: "China", police: "110, 122 (traffic accident)", ambulance: "120", fire: "119"), BarryAllen(country: "Colombia", police: " ", ambulance: "119", fire: " "), BarryAllen(country: "Comoros Islands", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Congo", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Cook Islands", police: "999", ambulance: "998", fire: "996"), BarryAllen(country: "Costa Rica", police: "", ambulance: "911", fire: ""), BarryAllen(country: "Côte d'Ivoire", police: "180", ambulance: "", fire: "110, 111,170"), BarryAllen(country: "Croatia", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Cuba", police: " ", ambulance: "26811", fire: " "), BarryAllen(country: "Curacao", police: "444444", ambulance: "112", fire: "114"), BarryAllen(country: "Cyprus", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Czech Republic", police: "158", ambulance: "112, 155", fire: "150"), BarryAllen(country: "Congo Democratic  ", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Denmark", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Djibouti", police: "17", ambulance: "351351", fire: "18"), BarryAllen(country: "Dominica", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Dominican Republic", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "East Timor", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Easter Island", police: "100‐244", ambulance: "100‐215", fire: "100‐264"), BarryAllen(country: "Ecuador", police: "101", ambulance: "131", fire: ""), BarryAllen(country: "Egypt", police: "122", ambulance: "123", fire: "180"), BarryAllen(country: "El Salvador", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "England", police: " ", ambulance: "112, 999", fire: " "), BarryAllen(country: "Equatorial Guinea", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Eritrea", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Estonia", police: "110", ambulance: "112", fire: "112"), BarryAllen(country: "Ethiopia", police: "91", ambulance: "92", fire: "93"), BarryAllen(country: "Falkland Islands", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Fiji", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Finland", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "France", police: "112, 17", ambulance: "112, 15", fire: "112, 18"), BarryAllen(country: "French Guiana", police: "112, 17", ambulance: "112, 15", fire: "112, 18"), BarryAllen(country: "French Polynesia", police: "17", ambulance: "15", fire: "18"), BarryAllen(country: "Gabon", police: "1730", ambulance: "1300‐1399", fire: "18"), BarryAllen(country: "Gambia The", police: "17", ambulance: "16", fire: "18"), BarryAllen(country: "Georgia", police: " ", ambulance: "22", fire: " "), BarryAllen(country: "Germany", police: " ", ambulance: "112", fire: "110"), BarryAllen(country: "Ghana", police: "999, 171", ambulance: "776111‐5", fire: "192"), BarryAllen(country: "Gibraltar", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Greece", police: "112, 100", ambulance: "112, 166", fire: "112, 199"), BarryAllen(country: "Grenada", police: "911", ambulance: "434", fire: "112"), BarryAllen(country: "Guadeloupe", police: "17", ambulance: "18", fire: "18"), BarryAllen(country: "Guam", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Guatemala", police: "110", ambulance: "123", fire: "123"), BarryAllen(country: "Guinea Bissau", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Guinea Republic", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Guyana", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Haiti", police: "114", ambulance: "118", fire: " "), BarryAllen(country: "Honduras", police: "119", ambulance: "195, 37 8654", fire: "198"), BarryAllen(country: "Hong Kong", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Hungary", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Iceland", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "India", police: "100, 103 (traffic accident)", ambulance: "102", fire: "101"), BarryAllen(country: "Indonesia", police: "110", ambulance: "118", fire: "113"), BarryAllen(country: "Iran", police: "110", ambulance: "115", fire: "123"), BarryAllen(country: "Iraq", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Ireland  ", police: " ", ambulance: "112. 999", fire: " "), BarryAllen(country: "Isle of Man", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Israel", police: "100", ambulance: "101", fire: "102"), BarryAllen(country: "Italy", police: "112, 113", ambulance: "112, 118", fire: "112, 115"), BarryAllen(country: "Jamaica", police: "119", ambulance: "110", fire: "110"), BarryAllen(country: "Japan", police: "110", ambulance: "119", fire: "119"), BarryAllen(country: "Jordan", police: "192", ambulance: "191", fire: "193"), BarryAllen(country: "Kazakhstan", police: " ", ambulance: "3", fire: " "), BarryAllen(country: "Kenya", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Kiribati", police: " ", ambulance: "994", fire: " "), BarryAllen(country: "Kosovo", police: " ", ambulance: "94", fire: " "), BarryAllen(country: "North Korea", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "South Korea", police: "112", ambulance: "119", fire: "119"), BarryAllen(country: "Kuwait", police: " ", ambulance: "777", fire: " "), BarryAllen(country: "Kyrgyzstan", police: " ", ambulance: "103", fire: " "), BarryAllen(country: "Laos", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Latvia", police: "112, 02", ambulance: "112, 03", fire: "112, 01"), BarryAllen(country: "Lebanon", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Lesotho", police: "123/124", ambulance: "121", fire: "122"), BarryAllen(country: "Liberia", police: " ", ambulance: "911 (cell phones only)", fire: " "), BarryAllen(country: "Libya", police: " ", ambulance: "193", fire: " "), BarryAllen(country: "Liechtenstein", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Lithuania", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Luxembourg", police: " ", ambulance: "112/113", fire: " "), BarryAllen(country: "Macau", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Macedonia", police: "92", ambulance: "94", fire: "93"), BarryAllen(country: "Madagascar", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Malawi", police: "997", ambulance: "998", fire: "999"), BarryAllen(country: "Malaysia", police: "999", ambulance: "999", fire: "994"), BarryAllen(country: "Maldives Republic", police: "119", ambulance: "102", fire: "999"), BarryAllen(country: "Mali", police: "18", ambulance: "15", fire: "17"), BarryAllen(country: "Malta", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Marianas Island", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Marshall Islands", police: "625 8666", ambulance: "625 4111", fire: " "), BarryAllen(country: "Martinique", police: "17", ambulance: "15", fire: "18"), BarryAllen(country: "Mauritania", police: "117", ambulance: "", fire: "118"), BarryAllen(country: "Mauritius", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "México", police: "60", ambulance: "65", fire: "68"), BarryAllen(country: "Micronesia ", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Moldova", police: "902", ambulance: "903", fire: "901"), BarryAllen(country: "Monaco", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Mongolia", police: "102", ambulance: "103", fire: "101"), BarryAllen(country: "Montenegro", police: " ", ambulance: "94", fire: " "), BarryAllen(country: "Montserrat", police: "999", ambulance: "911", fire: " "), BarryAllen(country: "Morocco", police: "19", ambulance: "15", fire: "15"), BarryAllen(country: "Mozambique", police: "119", ambulance: "117", fire: "198"), BarryAllen(country: "Namibia", police: "1011", ambulance: "2032276", fire: "2032270"), BarryAllen(country: "Nauru", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Nepal", police: "100", ambulance: "228094", fire: " "), BarryAllen(country: "Netherlands", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "New Zealand", police: " ", ambulance: "111", fire: " "), BarryAllen(country: "Nicaragua", police: "118", ambulance: "128", fire: "115, 911"), BarryAllen(country: "Niger", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Nigeria", police: " ", ambulance: "199", fire: " "), BarryAllen(country: "Northern Ireland", police: " ", ambulance: "112, 999", fire: " "), BarryAllen(country: "Norway", police: " ", ambulance: "112, 110", fire: " "), BarryAllen(country: "Oman", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Pakistan", police: " ", ambulance: "15", fire: " "), BarryAllen(country: "Palau", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Palestine", police: "100", ambulance: "101", fire: "101"), BarryAllen(country: "Panama", police: "104", ambulance: "269‐9778", fire: "103"), BarryAllen(country: "Papua New Guinea", police: " ", ambulance: "110", fire: "0"), BarryAllen(country: "Paraguay", police: " ", ambulance: "0", fire: " "), BarryAllen(country: "Peru", police: " ", ambulance: "011, 5114", fire: " "), BarryAllen(country: "Philippines", police: " ", ambulance: "166, 117", fire: " "), BarryAllen(country: "Poland", police: " ", ambulance: "112, 999", fire: " "), BarryAllen(country: "Portugal", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Puerto Rico", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Qatar", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Réunion", police: "17", ambulance: "112, 15", fire: "18"), BarryAllen(country: "Romania", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Russia", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Rwanda", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Samoa", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "San Marino", police: "112", ambulance: "113", fire: "116"), BarryAllen(country: "São Tomé ", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Saudi Arabia", police: "999", ambulance: "997", fire: "998"), BarryAllen(country: "Scotland", police: " ", ambulance: "112, 999", fire: " "), BarryAllen(country: "Senegal", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Serbia", police: " ", ambulance: "94", fire: " "), BarryAllen(country: "Seychelles", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Sierra Leone", police: "999", ambulance: "999", fire: "19"), BarryAllen(country: "Singapore", police: "999", ambulance: "995", fire: "995"), BarryAllen(country: "Slovakia", police: "158", ambulance: "155", fire: "150"), BarryAllen(country: "Slovenia", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Solomon Islands", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Somalia", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "South Africa", police: "10111", ambulance: "10177", fire: "10177"), BarryAllen(country: "South Africa (Cape Town)", police: " ", ambulance: "107", fire: " "), BarryAllen(country: "Spain", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Sri Lanka", police: " ", ambulance: "1 691095, 699935", fire: " "), BarryAllen(country: "St. Helena", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "St. Kitts & Nevis", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "St. Lucia", police: " ", ambulance: "999, 911", fire: " "), BarryAllen(country: "St. Marten", police: "911, 542‐2111", ambulance: "911, 542‐2111", fire: "911, 120"), BarryAllen(country: "St. Vincent & the Grenadines", police: " ", ambulance: "999, 911", fire: " "), BarryAllen(country: "Sudan", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Suriname", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Swaziland", police: " ", ambulance: "local numbers only", fire: " "), BarryAllen(country: "Sweden", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Switzerland", police: "117", ambulance: "144", fire: "118"), BarryAllen(country: "Syria", police: "112", ambulance: "110", fire: "113"), BarryAllen(country: "Tahiti ‐ French Polynesia", police: " ", ambulance: "15", fire: " "), BarryAllen(country: "Taiwan", police: "110", ambulance: "119", fire: "119"), BarryAllen(country: "Tajikistan", police: " ", ambulance: "3", fire: " "), BarryAllen(country: "Tanzania", police: " ", ambulance: "112, 999", fire: " "), BarryAllen(country: "Thailand", police: "191", ambulance: "191", fire: "199"), BarryAllen(country: "Tibet", police: " ", ambulance: "unknown", fire: " "), BarryAllen(country: "Togo", police: " ", ambulance: "101", fire: " "), BarryAllen(country: "Tonga", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Trinidad & Tobago", police: "999", ambulance: "990", fire: "990"), BarryAllen(country: "Tunisia", police: "197", ambulance: "190", fire: "198"), BarryAllen(country: "Turkey", police: "100", ambulance: "101, 112", fire: "102"), BarryAllen(country: "Turkmenistan", police: " ", ambulance: "3", fire: " "), BarryAllen(country: "Turks and Caicos Islands", police: " ", ambulance: "999, 911", fire: " "), BarryAllen(country: "Tuvalu", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Uganda", police: " ", ambulance: "112 (cell phone), 999 (fixed)", fire: " "), BarryAllen(country: "Ukraine", police: "2", ambulance: "03, 118", fire: "1"), BarryAllen(country: "UAE", police: " ", ambulance: "998, 999", fire: " "), BarryAllen(country: "United Kingdom", police: " ", ambulance: "112, 999", fire: " "), BarryAllen(country: "United States", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Uruguay", police: " ", ambulance: "999, 911", fire: " "), BarryAllen(country: "US Virgin Islands", police: " ", ambulance: "911", fire: " "), BarryAllen(country: "Uzbekistan", police: " ", ambulance: "3", fire: " "), BarryAllen(country: "Vanuatu", police: " ", ambulance: "112", fire: " "), BarryAllen(country: "Vatican City", police: "112", ambulance: "113", fire: "115"), BarryAllen(country: "Venezuela", police: " ", ambulance: "171", fire: " "), BarryAllen(country: "Vietnam", police: "3", ambulance: "5", fire: "8"), BarryAllen(country: "Wake Island", police: " ", ambulance: "no telephone system", fire: " "), BarryAllen(country: "Western Sahara", police: " ", ambulance: "150", fire: " "), BarryAllen(country: "Western Samoa", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Yemen  ", police: "19", ambulance: "191", fire: "191"), BarryAllen(country: "Zambia", police: " ", ambulance: "999", fire: " "), BarryAllen(country: "Zimbabwe", police: "995, 999", ambulance: "994, 999", fire: "993, 999")]
    @IBOutlet weak var SearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Emergency Contacts"
        SearchBar.delegate = self
        filteredData = Country
    }
 

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredData.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        cell.textLabel?.text = filteredData[indexPath.row].country
        cell.textLabel?.font = UIFont(name: "Avenir", size: 20)
        
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Countries"
    }
       override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
            
            // Define the initial state (before the animation)
            let rotationAngleRadians = 90.0 * CGFloat(Double.pi/180.0)
        
    //        let rotationTransform = CATransform3DMakeRotation(rotationAngleRadians, 0, 0, 1)
            let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 100, 0)
            cell.layer.transform = rotationTransform
            
            // Define the final state (after the animation)
            UIView.animate(withDuration: 0.3, animations: { cell.layer.transform = CATransform3DIdentity })
        }

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! VC1
        destVC.selectedRow = tableView.indexPathForSelectedRow?.row
        destVC.filteredCountries = filteredData
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    if searchText == "" {
        filteredData = Country
        tableView.reloadData()
    }else{
        filteredData = []
        for i in Country{
            if i.country.lowercased().uppercased().contains(searchText.lowercased().uppercased()){
                filteredData.append(i)
            }
            self.tableView.reloadData()
}
        }
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
       }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
}

    
