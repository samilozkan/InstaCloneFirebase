//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Büşra Özkan on 20.11.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func logoutButton(_ sender: Any) {
        performSegue(withIdentifier: "toMainVC", sender: nil)
    }
    
}
