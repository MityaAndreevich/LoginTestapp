//
//  ViewController.swift
//  LoginTestapp
//
//  Created by Дмитрий Логачёв on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    // MARK: - Private Properties
    private let realUserName = "Name"
    private let realUserPassword = "Password"
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.layer.cornerRadius = 15
        passwordTextField.layer.cornerRadius = 15
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.userName = userNameTextField.text
    }
    
    // MARK: - IB Actions
    @IBAction func forgotRegisteredData(_ sender: UIButton) {
        sender.tag == 0
            ? sendingAlertMessage(title: "Forgot user Name?", message: "User name: \(realUserName) 😉")
            : sendingAlertMessage(title: "Forgot password?", message: "Password: \(realUserPassword) 😉")
    }
    
    @IBAction func logInButtonPressed() {
        guard
            userNameTextField.text == realUserName,
            passwordTextField.text == realUserPassword
        else {
            sendingAlertMessage(
                title: "Alert!",
                message: "Wrong User Name or Password"
            )
            passwordTextField.text = ""
            return
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    // MARK: - Private Methods
        private func sendingAlertMessage(title: String, message: String) {
            let alertMessage = UIAlertController(
                title: title,
                message: message,
                preferredStyle: .alert
            )
            let okAction = UIAlertAction(title: "OK", style: .default)
            alertMessage.addAction(okAction)
            present(alertMessage, animated: true)
        }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInButtonPressed()
            performSegue(withIdentifier: "showGreetingVC", sender: nil)
        }
        return true
    }
}
