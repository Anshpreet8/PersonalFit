//
//  ViewController.swift
//  PersonalFit
//
//  Created by Anshpreet Sandhu on 2020-07-14.
//  Copyright © 2020 Anshpreet Sandhu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var repsField: UITextField!    
    @IBOutlet weak var durationField: UITextField!
    @IBOutlet weak var breaksField: UITextField!
    
    var reps = 0
    var duration = 0
    var breaks = 0
    
    // get started button
    @IBAction func getStarted(_ sender: Any) {
        
        // convert the text to integers
        self.reps = Int(repsField.text!)!
        self.duration = Int(durationField.text!)!
        self.breaks = Int(breaksField.text!)!
        
        self.performSegue(withIdentifier: "secondSegue", sender: self)
        
    }
    
    // passes the variables to the get started view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! GetStartedViewController
        vc.timerDisplayed = self.duration + 1
        vc.timeRemaining = self.duration
        vc.numReps = self.reps
        vc.breaksTime = self.breaks
        
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

