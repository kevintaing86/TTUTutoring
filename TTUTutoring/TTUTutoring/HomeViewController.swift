//
//  HomeViewController.swift
//  TTUTutoring
//
//  Created by Kevin Taing on 8/6/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit
import MapKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: - Outlets and members
    @IBOutlet weak var homeVavigationItem: UINavigationItem!
    @IBOutlet weak var bottomToolbar: UIToolbar!
    @IBOutlet weak var mapView: MKMapView!
    
    // MARK: - Actions and methods
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomToolbar.backgroundColor = UIColor(red:204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        bottomToolbar.barTintColor = UIColor(red:204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        
        let initialLocation = CLLocation(latitude: 33.585567,longitude:  -101.873388)
        centerMapOnLocation(initialLocation)
        
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
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let subjectVC = storyboard?.instantiateViewControllerWithIdentifier("Subject") as! SubjectViewController
        subjectVC.Subject = subjects[indexPath.row]
        
        let backItem = UIBarButtonItem()
        backItem.title = "Home"
        navigationItem.backBarButtonItem = backItem
        
        navigationController?.pushViewController(subjectVC, animated: true)
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let regionRadius: CLLocationDistance = 1000
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
}
