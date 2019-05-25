//
//  LoggedInViewController.swift
//  LoginApplication
//
//  Created by Pratyush Sharma on 26/06/18.
//  Copyright © 2018 Apple.Inc. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var boothDefault: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func signOutButton(_ sender: UIBarButtonItem) {
        
     
       let loggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn")
        
        if(loggedIn)
        {
             UserDefaults.standard.set(false, forKey:"isUserLoggedIn")
             UserDefaults.standard.synchronize()
            let logViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
                self.present(logViewController, animated: true, completion: nil)
        }
    }
    @IBAction func detailsTapped(_ sender: UIButton) {
        boothDefault.isHidden = false
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
