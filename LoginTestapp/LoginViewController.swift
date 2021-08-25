//
//  ViewController.swift
//  LoginTestapp
//
//  Created by Дмитрий Логачёв on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        userNameTextField.layer.cornerRadius = 15
        passwordTextField.layer.cornerRadius = 15
    }

    @IBAction func enterUserName() {
        guard let userName = userNameTextField.text, !userName.isEmpty  else {
            return
        }
        guard userName != "Name" else {
            return
        }
    }
    
    @IBAction func enterPassword() {
    }
}

