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
    var timerDisplayed = 30 // the duration time
    var timeRemaining = 0
    var numReps = 6
    var breaksTime = 10
    var whichTimer = 0 // will either be 1 or 2
    var numTimes = 1 // how many times the timer has run
    
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func startButton(_ sender: Any) {
        
        // timer interval: how much it will be repeated (every 1 sec)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
        
    }
    
    // what happens when start btn is pressed
    @objc func Action(){
        
        
        timeRemaining -= 1
        timerLabel.text = String(timeRemaining)
        
        if (timeRemaining == -1 && whichTimer == 0){
            timeRemaining = breaksTime + 1
            timeRemaining -= 1
            timerLabel.text = String(timeRemaining)
            whichTimer += 1
        } else if (timeRemaining == -1 && whichTimer == 1) {
            timeRemaining = timerDisplayed
            timeRemaining -= 1
            timerLabel.text = String(timeRemaining)
            whichTimer -= 1
            numTimes += 1
        }
        
        if (numTimes == numReps){
            timer.invalidate()
            numTimes = 0
        }
        
        
        // to stop: timer.invalidate
        
    }
    
    // Reset button
    
    @IBAction func resetButton(_ sender: Any) {
        
        timer.invalidate()
        timeRemaining = timerDisplayed - 1
        whichTimer = 0
        numTimes = 1
        timerLabel.text = String(timeRemaining)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // puts the duration right away on the screen b4 start btn is tapped
        timerLabel.text = String(timeRemaining)
    }


}
