//
//  ViewController.swift
//  LocalizationExample
//
//  Created by Mohamed on 6/15/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import UIKit
import MOLH
class ViewController: UIViewController {

    @IBOutlet weak var langLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        print("Lang \(MOLHLanguage.currentAppleLanguage() )")
        
        langLabel.text=MOLHLanguage.currentAppleLanguage()
    }

    @IBAction func langButton(_ sender: Any) {
        
        MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == "en" ? "ar" : "en")
        MOLH.reset()
        
    }
    
}

