//
//  LoginViewController.swift
//  LikeMeDateMe
//
//  Created by Armin Scheithauer on 06.04.15.
//  Copyright (c) 2015 Armin Scheithauer. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressedFBLogin(sender: UIButton) {
        PFFacebookUtils.logInWithPermissions(["public_profile", "user_about_me", "user_birthday"], block: {
            user, error in
            
            if user == nil {
                println("oh oh user canceld facebook login \(error.localizedDescription)")
            } else if user.isNew {
                println("User signed up and logged in through facebook \(error.localizedDescription)")
            } else {
                println("User logged in through facebook")
            }
        })
    }



}
