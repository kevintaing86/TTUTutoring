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
    
    // MARK: - Actions and methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
        
        for tutor in Tutors.Tutors!{
            if(tutor.tutorSubjects.contains(Subject)){
                Cell.textLabel?.text = tutor.tutorName
                return Cell
            }
        }
        return Cell
    }
}
