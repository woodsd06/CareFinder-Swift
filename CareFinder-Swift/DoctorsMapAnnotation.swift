//
//  DoctorsMapAnnotation.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/22/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation
import MapKit

class DoctorsMapAnnotation: NSObject, MKAnnotation
{
    var title: String
    {
        return self.title
    }
    
    var subtitle: String
    {
        return self.subtitle
    }
    
    var latitude: String = ""
    
    var longitude: String = ""
    
    var tag: Int
    {
        return self.tag
    }
    
    var distance: String
    {
        return self.distance
    }
    
    var isUserLocation: Bool
    {
        return self.isUserLocation
    }
    
    var coordinate: CLLocationCoordinate2D
    {
        return CLLocationCoordinate2D(latitude: (self.latitude as NSString).doubleValue, longitude: (self.longitude as NSString).doubleValue)
    }
}