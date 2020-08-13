//
//  LoginViewController.swift
//  PersonalFit
//
//  Created by Anshpreet Sandhu on 2020-07-26.
//  Copyright © 2020 Anshpreet Sandhu. All rights reserved.
//

import UIKit
import FirebaseAuth

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
    
    // check the fields and validate data is correct. If everything is correct, this methods returns nil, otherwise returns error msg
    func validatFields() -> String? {
        
        // check all fields are filled in
        if emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""{
            return "Please fill in all fields"
        }
        return nil
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        
        // Validate text fields
        let error = validatFields()
        
        if error != nil {
            // theres something wrong with fields, show error msg
            showError(error!)
        } else {
        
        // create cleaned versions of the text field
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // signing in the user
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                
                if error != nil {
                    // couldn't sign in
                    self.showError("Incorrect username/password")
                } else {
                    self.transitionToHome()
                }
                
            }
        
        }
    }
    
    func showError (_ message: String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    // changing
    
    func transitionToHome() {
        
        let homeViewController = storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
        
    }
    
}
