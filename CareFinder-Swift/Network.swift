//
//  Network.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/21/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class Network: NSCoding
{
    var networkID: String = ""
    var description: String = ""
    
    func deserialize(json: [String: AnyObject])
    {
        self.networkID = json["NetworkID"] as! String
        self.description = json["Description"] as! String
    }
    
    @objc func encodeWithCoder(encoder: NSCoder)
    {
        encoder.encodeObject(networkID, forKey: kNetworkID)
        encoder.encodeObject(description, forKey: kNetworkDescription)
    }
    
    @objc required init(coder decoder: NSCoder)
    {
        self.networkID = decoder.decodeObjectForKey(kNetworkID) as! String
        self.description = decoder.decodeObjectForKey(kNetworkDescription) as! String
    }
}