//
//  GreetingViewController.swift
//  LoginTestapp
//
//  Created by Дмитрий Логачёв on 25.08.2021.
//

import UIKit

class GreetingViewController: UIViewController {
    @IBOutlet weak var greetingUser: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingUser.text = "Greetings, \(userName ?? "")"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutButton(_ sender: Any) {
        dismiss(animated: true)
        //performSegue(withIdentifier: userName, sender: self)
    }
    
}
