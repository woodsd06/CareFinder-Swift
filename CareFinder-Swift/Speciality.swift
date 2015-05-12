//
//  Speciality.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/21/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class Speciality: NSCoding
{
    var code: String = ""
    var desc: String = ""
    
    func deserialize(json: [String: AnyObject])
    {
        self.code = json["SpecialtyID"] as! String
        self.desc = json["Description"] as! String
    }
    
    @objc func encodeWithCoder(encoder: NSCoder)
    {
        encoder.encodeObject(code, forKey: "code")
        encoder.encodeObject(desc, forKey: "description")
    }
    
    @objc required init(coder decoder: NSCoder)
    {
        self.code = decoder.decodeObjectForKey("code") as! String
        self.desc = decoder.decodeObjectForKey("description") as! String
    }
}