//
//  MainNavigationController.swift
//  TTUTutoring
//
//  Created by Kevin Taing on 8/6/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.backgroundColor = UIColor(red:204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        self.navigationBar.barTintColor = UIColor(red:204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        
        self.navigationBar.tintColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
