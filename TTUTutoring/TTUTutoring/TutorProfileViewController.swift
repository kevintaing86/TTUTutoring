//
//  TutorProfileViewController.swift
//  TTUTutoring
//
//  Created by Kevin Taing on 8/12/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class TutorProfileViewController: UIViewController {

    // MARK: - Outlets and variables
    @IBOutlet weak var contentView: UIView!
    
    
    // MARK: - Actions and methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
