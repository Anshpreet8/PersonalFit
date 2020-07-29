//
//  SignUpViewController.swift
//  PersonalFit
//
//  Created by Anshpreet Sandhu on 2020-07-26.
//  Copyright © 2020 Anshpreet Sandhu. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements(){
        
        errorLabel.alpha = 0 // error label is invisible
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // check the fields and validate data is correct. If everything is correct, this methods returns nil, otherwise returns error msg
    func validatFields() -> String? {
        
        // check all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""{
            return "Please fill in all fields"
        }
        
        
        
        return nil
        
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        
        // validate the fields
        let error = validatFields()
        
        if error != nil {
            // theres something wrong with fields, show error msg
            showError(error!)
        } else {
            
            // create the user
            Auth.auth().createUser(withEmail: <#T##String#>, password: <#T##String#>) { (result, err) in
                
                // check for errors
                if err != nil {
                    // there was an error creating the user
                    self.showError("Error creating user")
                } else {
                    // user was created successfully, store first and last name
                    
                }
                
            }
                   
           // transition to the homescreen
        }
        
       
        
    }
    
    func showError(_ message:String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
}
