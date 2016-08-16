//
//  TutorProfileViewController.swift
//  TTUTutoring
//
//  Created by Kevin Taing on 8/12/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class TutorProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: - Outlets and variables
    @IBOutlet weak var contentView: UIView!
    var tutor: Tutor?
    
    // MARK: - Actions and methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (tutor?.tutorSubjects.count)!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        return Cell
    }
}
