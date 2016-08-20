//
//  LearningCenter.swift
//  TTUTutoring
//
//  Created by Kevin Taing on 8/19/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit
import MapKit

class LearningCenter: NSObject, MKAnnotation{
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    
    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
}
