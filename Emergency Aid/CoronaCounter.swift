//
//  CoronaCounter.swift
//  Emergency Aid
//
//  Created by sanjithsethu on 7/8/20.
//  Copyright © 2020 sanjithsethu. All rights reserved.
//

import UIKit
import WebKit

class CoronaCounter: UIViewController {
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let myURL = URL(string: "https://www.worldometers.info/coronavirus/")
        let myRequest = URLRequest(url: myURL!)
        webview.load(myRequest)

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
