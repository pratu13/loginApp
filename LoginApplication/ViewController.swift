//
//  ViewController.swift
//  LoginApplication
//
//  Created by Pratyush Sharma on 26/06/18.
//  Copyright © 2018 Apple.Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    var loggedViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
 
    @IBAction func loginTapped(_ sender: UIButton) {
        
        let userN = userName.text
        let userP = userPassword.text
        
        let userStored = UserDefaults.standard.string(forKey: "user")
        let passWordStored = UserDefaults.standard.string(forKey: "password")
        
        if( userStored == userN ) {
            if( passWordStored == userP ) {
                UserDefaults.standard.set(true, forKey:"isUserLoggedIn")
                UserDefaults.standard.synchronize()
                self.performSegue(withIdentifier: "tabBar", sender: self)
            }
            else {
                displaythirdAlert(userMessage: "Incorrect Password");
            }
        }
        else {
            
                displaythirdAlert(userMessage: "Incorrect Username");
            }
    }
    @IBAction func registerTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "registerTapped", sender: self)
        
    }
    func displaythirdAlert(userMessage: String) {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert)
        let okAction: UIAlertAction!
        okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }
}
    
    


