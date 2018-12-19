//
//  ViewController.swift
//  preAlertcontroller
//
//  Created by Vattanac on 12/19/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func click(_ sender: Any) {
        let title = "A Short Title is Best"
        let message = "A message should be a short, complete sentence."
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertController.addTextField { textField in
            textField.placeholder = "Login Placeholder"
        }
        
        alertController.addTextField { textField in
            textField.placeholder = "Password Placeholder"
            textField.isSecureTextEntry = true
        }
        
        alertController.addAction(UIAlertAction(title: "cancel", style: .destructive, handler: nil))
        alertController.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
        
    }
    

}

