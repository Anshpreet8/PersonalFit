//
//  ViewController.swift
//  PersonalFit
//
//  Created by Anshpreet Sandhu on 2020-07-14.
//  Copyright © 2020 Anshpreet Sandhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var repsField: UITextField!    
    @IBOutlet weak var durationField: UITextField!
    @IBOutlet weak var breaksField: UITextField!
    
    @IBAction func getStarted(_ sender: Any) {
        
        self.performSegue(withIdentifier: "secondSegue", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        repsField.resignFirstResponder()
        durationField.resignFirstResponder()
        breaksField.resignFirstResponder()
    }


}

