//
//  ViewController.swift
//  LikeMeDateMe
//
//  Created by Armin Scheithauer on 04.04.15.
//  Copyright (c) 2015 Armin Scheithauer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(CardView(frame: CGRect(x: 100.0, y: 150.0, width: 150, height: 100)))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

