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
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
