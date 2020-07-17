//
//  ViewController.swift
//  PersonalFit
//
//  Created by Anshpreet Sandhu on 2020-07-14.
//  Copyright © 2020 Anshpreet Sandhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func getStarted(_ sender: Any) {
        
        self.performSegue(withIdentifier: "secondSegue", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

