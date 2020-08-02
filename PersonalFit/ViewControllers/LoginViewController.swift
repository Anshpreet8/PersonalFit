//
//  LoginViewController.swift
//  PersonalFit
//
//  Created by Anshpreet Sandhu on 2020-07-26.
//  Copyright © 2020 Anshpreet Sandhu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements(){
        
        errorLabel.alpha = 0
        
    }
    
    
    
    @IBAction func loginTapped(_ sender: Any) {
        
        // Validate text fields
        
        // signing in the user
        
    }
    
}
