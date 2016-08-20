//
//  HomeViewController.swift
//  TTUTutoring
//
//  Created by Kevin Taing on 8/6/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit
import MapKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MKMapViewDelegate{

    // MARK: - Outlets and members
    @IBOutlet weak var homeVavigationItem: UINavigationItem!
    @IBOutlet weak var bottomToolbar: UIToolbar!
    @IBOutlet weak var mapView: MKMapView!
    let location = CLLocationCoordinate2D(latitude: 33.585567,longitude:  -101.873388)
    
    // MARK: - Actions and methods
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomToolbar.backgroundColor = UIColor(red:204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        bottomToolbar.barTintColor = UIColor(red:204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        
        let initialLocation = CLLocation(latitude: 33.585567,longitude:  -101.873388)
        let coordinate = CLLocationCoordinate2D(latitude: 33.585567,longitude:  -101.873388)
        centerMapOnLocation(initialLocation)
        
        let learningCenter = LearningCenter(title: "Learning Center", coordinate: coordinate, info: "Located in the basement of Holden Hall")
        mapView.addAnnotation(learningCenter)
        
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
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "LearningsCenter"
        
        if annotation is LearningCenter{
            var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
            
            if annotationView == nil{
                annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView!.canShowCallout = true
                
                let btn = UIButton(type: .DetailDisclosure)
                annotationView!.rightCalloutAccessoryView = btn
            }
            else{
                annotationView?.annotation = annotation
            }
            
            return annotationView
        }
        return nil
    }
    
    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        let learningCenter = view.annotation as! LearningCenter
        
        let title = learningCenter.title
        let info = learningCenter.info
        
        let alertController = UIAlertController(title: title, message: info, preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
        alertController.addAction(UIAlertAction(title: "Open in Maps", style: .Default)
        {(action: UIAlertAction) in
            self.openMapForPlace(self.location)
            })
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    func openMapForPlace(placeCoordinate: CLLocationCoordinate2D){
        let placeMark = MKPlacemark(coordinate: placeCoordinate, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placeMark)
        let regionSpan = MKCoordinateRegionMakeWithDistance(placeCoordinate, CLLocationDistance(1000), CLLocationDistance(1000))
        let options = [MKLaunchOptionsMapCenterKey: NSValue(MKCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(MKCoordinateSpan: regionSpan.span)
        ]
        
        mapItem.name = "Learning Center"
        mapItem.openInMapsWithLaunchOptions(options)
    }
    
}



