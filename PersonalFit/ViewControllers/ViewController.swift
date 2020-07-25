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
    
    var duration = 0
    
    // get started button
    @IBAction func getStarted(_ sender: Any) {
        
        self.duration = Int(durationField.text!)!
        
        self.performSegue(withIdentifier: "secondSegue", sender: self)
        
        // let repsText = Int(repsField.text!)
         
        // let breaks = Double(breaksField.text!)
        
    }
    
    // passes the variables to the get started view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! GetStartedViewController
        vc.timerDisplayed = self.duration + 1
        vc.timeRemaining = self.duration
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // this function ensures the number pads disappear when user taps on screen outsode the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        repsField.resignFirstResponder()
        durationField.resignFirstResponder()
        breaksField.resignFirstResponder()
    }


}

