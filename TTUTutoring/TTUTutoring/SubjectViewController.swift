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
        //need to find a way to populate cells
        
        Cell.textLabel?.text = Tutors.tutorsWithSubject(Subject)[indexPath.row].tutorName
        
        return Cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("toTutorProfileSegue", sender: nil)
    }
}
