//
//  ViewController.swift
//  TabBarExample
//
//  Created by Aditya Vikram Godawat on 27/04/16.
//  Copyright © 2016 Wow Labz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class NavController: UINavigationController {
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
       return UIStatusBarStyle.LightContent
    }
    
}

