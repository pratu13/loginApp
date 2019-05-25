//
//  LoogedIn1ViewController.swift
//  LoginApplication
//
//  Created by Pratyush Sharma on 04/07/18.
//  Copyright © 2018 Apple.Inc. All rights reserved.
//

import UIKit

class LoogedIn1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    
    
    func search()
    {
    if(searchBar.isSearchResultsButtonSelected==true)
        {
            var key: String
            key = searchBar.text!
        }
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
