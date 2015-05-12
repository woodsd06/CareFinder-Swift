//
//  Location.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/21/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class Location
{
    var latitude: String = ""
    var longitude: String = ""
    
    func deserialize(json: [String: AnyObject])
    {
        self.latitude = json["lat"] as! String
        self.longitude = json["lng"] as! String
    }
}