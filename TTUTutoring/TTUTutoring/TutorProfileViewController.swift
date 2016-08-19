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
    @IBOutlet weak var nameField: UILabel!
    @IBOutlet weak var table: UITableView!
    
    // MARK: - Actions and methods
    @IBAction func closeView(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.layer.cornerRadius = 10
        
        nameField.text = tutor!.tutorName
        
        table.separatorStyle = UITableViewCellSeparatorStyle.None
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (tutor?.tutorSchedule.count)!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        Cell.textLabel?.text = tutor?.tutorSchedule[indexPath.row]
        
        return Cell
    }
}
