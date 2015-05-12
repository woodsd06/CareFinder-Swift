//
//  Preferences.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/22/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class Preferences: NSCoding
{
    var pref1: String = "";
    var pref2: String = "";
    
    @objc func encodeWithCoder(encoder: NSCoder)
    {
        encoder.encodeObject(pref1, forKey: "pref1")
        encoder.encodeObject(pref2, forKey: "Pref2")
    }
    
    @objc required init(coder decoder: NSCoder)
    {
        self.pref1 = decoder.decodeObjectForKey("pref1") as! String
        self.pref2 = decoder.decodeObjectForKey("Pref2") as! String
    }
}