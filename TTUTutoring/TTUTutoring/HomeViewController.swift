//
//  HomeViewController.swift
//  TTUTutoring
//
//  Created by Kevin Taing on 8/6/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: - Outlets and members
    @IBOutlet weak var homeVavigationItem: UINavigationItem!
    @IBOutlet weak var bottomToolbar: UIToolbar!
    
    // MARK: - Actions and methods
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomToolbar.backgroundColor = UIColor(red:204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        bottomToolbar.barTintColor = UIColor(red:204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subjects.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        Cell.textLabel?.text = subjects[indexPath.row]
        
        return Cell
    }
    
}
