//
//  GetStartedViewController.swift
//  PersonalFit
//
//  Created by Anshpreet Sandhu on 2020-07-16.
//  Copyright © 2020 Anshpreet Sandhu. All rights reserved.
//

import UIKit

class GetStartedViewController: UIViewController {
    
    var timer = Timer()
    var timerDisplayed = 30
    var whichTimer = 0 // will either be 1 or 2
    var numTimes = 1 // how many times the timer has run
    
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func startButton(_ sender: Any) {
        
        // timer interval: how much it will be repeated (every 1 sec)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
        
    }
    
    @objc func Action(){
        
        timerDisplayed -= 1
        timerLabel.text = String(timerDisplayed)
        
        if (timerDisplayed == -1 && whichTimer == 0){
            timerDisplayed = 11
            timerDisplayed -= 1
            timerLabel.text = String(timerDisplayed)
            whichTimer += 1
        } else if (timerDisplayed == -1 && whichTimer == 1) {
            timerDisplayed = 31
            timerDisplayed -= 1
            timerLabel.text = String(timerDisplayed)
            whichTimer -= 1
            numTimes += 1
        }
        
        if (numTimes == 6){
            timer.invalidate()
            numTimes = 0
        }
        
        
        // to stop: timer.invalidate
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
