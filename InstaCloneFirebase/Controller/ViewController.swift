//
//  ViewController.swift
//  InstaCloneFirebase
//
//  Created by Büşra Özkan on 19.11.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func signinButton(_ sender: Any) {
        performSegue(withIdentifier: "toTabBar", sender: nil)
    }
    
    
    @IBAction func signupButton(_ sender: Any) {
    }
    
}

