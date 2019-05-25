//
//  RegisterUserViewController.swift
//  LoginApplication
//
//  Created by Pratyush Sharma on 26/06/18.
//  Copyright © 2018 Apple.Inc. All rights reserved.
//

import UIKit

class RegisterUserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var userFullName: UITextField!
    @IBOutlet weak var registeredPassword: UITextField!
    @IBOutlet weak var registeredUserName: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        
        let name = userFullName.text
        let user = registeredUserName.text
        let password = registeredPassword.text
        
        if ( (name?.isEmpty)! || (user?.isEmpty)!
            || (password?.isEmpty)!)
        {
            displayAlert(userMessage: "Enter all the credentials")
        }
        
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(user, forKey: "user")
        UserDefaults.standard.set(password, forKey: "password")
        
        displaysecondAlert(userMessage: "Registered")
        
    }
    @IBAction func loginButtonTapped(_ sender: Any) {
     
        self.dismiss(animated: true, completion: nil)
        
    }
    func displayAlert(userMessage: String)
    {
        
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        myAlert.addAction(okAction)
        
        self.present(myAlert, animated: true, completion: nil)
        
    }
    func displaysecondAlert(userMessage: String)
    {
        
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default){ action in
            self.dismiss(animated: true, completion: nil)
        }
            
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }
    
    
}
