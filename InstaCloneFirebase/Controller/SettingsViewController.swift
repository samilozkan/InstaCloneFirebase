//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Büşra Özkan on 20.11.2022.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseStorage
import FirebaseFirestore


class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func logoutButton(_ sender: Any) {
        do{
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toMainVC", sender: nil)
        }catch{
        }
        
    }
    
}
