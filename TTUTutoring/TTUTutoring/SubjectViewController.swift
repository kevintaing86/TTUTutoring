//
//  SubjectViewController.swift
//  TTUTutoring
//
//  Created by Kevin Taing on 8/10/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class SubjectViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // MARK: - Outlets and members
    var Tutors = TutorData()
    var Subject: String = ""
    var indexRow: Int?
    @IBOutlet weak var toolbar: UIToolbar!
    
    // MARK: - Actions and methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toolbar.backgroundColor = UIColor(red:204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        toolbar.barTintColor = UIColor(red:204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Tutors.numberOfTutorsWithSubject(Subject)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell

        Cell.textLabel?.text = Tutors.tutorsWithSubject(Subject)[indexPath.row].tutorName
        
        return Cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        indexRow = indexPath.row
        performSegueWithIdentifier("toTutorProfileSegue", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tutorProfileVC = segue.destinationViewController as! TutorProfileViewController
        tutorProfileVC.tutor = Tutors.tutorsWithSubject(Subject)[indexRow!]
    }
}
