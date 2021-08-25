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
    
    let realUserName = "Name"
    let realUserPassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        userNameTextField.layer.cornerRadius = 15
        passwordTextField.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.userName = userNameTextField.text
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
    //@IBAction func unwind(for segue: UIStoryboardSegue) {
        //userNameTextField.text = ""
        //}
    @IBAction func rememberUserName(_ sender: UIButton) {
        let rememberedUserName = UIAlertController(title: "Forgot the Name?", message: "User Name: Name", preferredStyle: UIAlertController.Style.alert)
        
        rememberedUserName.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(rememberedUserName, animated: true, completion: nil)
    }
    
    @IBAction func rememberUserPassword(_ sender: Any) {
        let rememberedUserPassword = UIAlertController(title: "Forgot the Password?", message: "User Password: Password", preferredStyle: UIAlertController.Style.alert)
        
        rememberedUserPassword.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(rememberedUserPassword, animated: true, completion: nil)    }
    
    @IBAction func logInButtonPressed(_ sender: Any) {
        }
      
}


