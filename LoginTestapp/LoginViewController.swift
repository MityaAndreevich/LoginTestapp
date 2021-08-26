//
//  ViewController.swift
//  LoginTestapp
//
//  Created by Дмитрий Логачёв on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    //MARK: - Private Properties
    private let realUserName = "Name"
    private let realUserPassword = "Password"
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.layer.cornerRadius = 15
        passwordTextField.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.userName = userNameTextField.text
    }
    //MARK: - IB Actions
    @IBAction func rememberUserName(_ sender: UIButton) {
        let rememberedUserName = UIAlertController(
            title: "Forgot the Name?",
            message: "User Name: \(realUserName)",
            preferredStyle: UIAlertController.Style.alert
        )
        
        rememberedUserName.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertAction.Style.default,
            handler: nil
        ))
        
        self.present(rememberedUserName,
                     animated: true,
                     completion: nil)
    }
    
    @IBAction func rememberUserPassword(_ sender: Any) {
        let rememberedUserPassword = UIAlertController(
            title: "Forgot the Password?",
            message: "User Password: \(realUserPassword)",
            preferredStyle: UIAlertController.Style.alert
        )
        
        rememberedUserPassword.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertAction.Style.default,
            handler: nil
        ))
        
        self.present(
            rememberedUserPassword,
            animated: true,
            completion: nil
        )
    }
    
    @IBAction func logInButtonPressed(_ sender: Any) {
        guard
            userNameTextField.text == realUserName,
            passwordTextField.text == realUserPassword
        else {
            sendingAlertMessage()
            return
        }
    }
    //MARK: - Private Methods
    private func sendingAlertMessage() {
        let alertMessage = UIAlertController(
            title: "Alert!",
            message: "Wrong User Name or Password",
            preferredStyle: UIAlertController.Style.alert
        )
        
        alertMessage.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertAction.Style.default,
            handler: nil
        ))
        
        self.present(
            alertMessage,
            animated: true,
            completion: nil
        )
    }
}
