//
//  Agent.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/22/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class Agent: NSCoding
{
    var address: String = ""
    var businessName: String = ""
    var businessTypeSold: String = ""
    var city: String = ""
    var distance: String = ""
    var email: String = ""
    var firstName: String = ""
    var iD: String = ""
    var lastName: String = ""
    var latitudeString: String = ""
    var longitudeString: String = ""
    var middleName: String = ""
    var phone: String = ""
    var state: String = ""
    var suffix: String = ""
    var zip: String = ""
    var isDescription: Bool = false
    var FarmBureauExclusiveAgent: Bool = false
    
    func deserialize(json: [String: AnyObject])
    {
        if (json["Address"] != nil && json["Address"] as! String != "")
        {
            self.address = json["Address"] as! String
        }
        
        if (json["BusinessName"] != nil)
        {
            self.businessName = json["BusinessName"] as! String
        }
        
        if (json["City"] != nil)
        {
            self.city = json["City"] as! String
        }
        
        if (json["Distance"] != nil)
        {
            self.distance = json["Distance"] as! String
        }
        
        if (json["Email"] != nil)
        {
            self.email = json["Email"] as! String
        }
        
        if (json["FirstName"] != nil)
        {
            self.firstName = json["FirstName"] as! String
        }
        
        if (json["ID"] != nil)
        {
            self.iD = json["ID"] as! String
        }
        
        if (json["LastName"] != nil)
        {
            self.lastName = json["LastName"] as! String
        }
        
        if (json["Latitude"] != nil)
        {
            self.latitudeString = json["Latitude"] as! String
        }
        
        if (json["Longitude"] != nil)
        {
            self.longitudeString = json["Longitude"] as! String
        }
        
        if (json["MiddleName"] != nil)
        {
            self.middleName = json["MiddleName"] as! String
        }
        
        if (json["Phone"] != nil)
        {
            var string = json["Phone"] as! String
            var myString = string.stringByReplacingOccurrencesOfString(" ", withString: "")
            self.phone = myString
        }
        
        if (json["State"] != nil)
        {
            self.state = json["State"] as! String
        }
        
        if (json["Zip"] != nil)
        {
            self.zip = json["Zip"] as! String
        }
        
        if (json["Suffix"] != nil)
        {
            self.suffix = json["Suffix"] as! String
        }
        
        if (json["BusinessTypeSold"] != nil)
        {
            self.businessTypeSold = json["BusinessTypeSold"] as! String
        }
        
        if (json["FarmBureauExclusiveAgent"] != nil)
        {
            self.FarmBureauExclusiveAgent = json["FarmBureauExclusiveAgent"] as! Bool
        }
    }
    
    @objc func encodeWithCoder(aCoder: NSCoder)
    {
        aCoder.encodeObject(self.firstName, forKey:kAgentFirstName)
        aCoder.encodeObject(self.middleName, forKey:kAgentMiddleName)
        aCoder.encodeObject(self.lastName, forKey:kAgentLastName)
        aCoder.encodeObject(self.suffix, forKey:kAgentSuffix)
        aCoder.encodeObject(self.address, forKey:kAgentAddress)
        aCoder.encodeObject(self.city, forKey:kAgentCity)
        aCoder.encodeObject(self.state, forKey:kAgentState)
        aCoder.encodeObject(self.phone, forKey:kAgentPhoneNumber)
        aCoder.encodeObject(self.zip, forKey:kAgentZip)
        aCoder.encodeObject(self.distance, forKey:kAgentDistance)
        aCoder.encodeObject(self.latitudeString, forKey:kAgentLatitude)
        aCoder.encodeObject(self.longitudeString, forKey:kAgentLongitude)
        aCoder.encodeObject(self.businessName, forKey:kAgentBusinessName)
        aCoder.encodeObject(self.iD, forKey:kAgentID)
        aCoder.encodeObject(self.email, forKey:kAgentEmail)
        aCoder.encodeObject(self.businessTypeSold, forKey:kBusinessTypeSold)
        aCoder.encodeObject(self.FarmBureauExclusiveAgent, forKey:kFarmBureauExclusiveAgent)
    }
    
    @objc required init(coder aDecoder: NSCoder)
    {
        self.firstName = aDecoder.decodeObjectForKey(kAgentFirstName) as! String
        self.middleName = aDecoder.decodeObjectForKey(kAgentMiddleName) as! String
        self.lastName = aDecoder.decodeObjectForKey(kAgentLastName) as! String
        self.address = aDecoder.decodeObjectForKey(kAgentAddress) as! String
        self.city = aDecoder.decodeObjectForKey(kAgentCity) as! String
        self.state = aDecoder.decodeObjectForKey(kAgentState) as! String
        self.distance = aDecoder.decodeObjectForKey(kAgentDistance) as! String
        self.phone = aDecoder.decodeObjectForKey(kAgentPhoneNumber) as! String
        self.iD = aDecoder.decodeObjectForKey(kAgentID) as! String
        self.suffix = aDecoder.decodeObjectForKey(kAgentSuffix) as! String
        self.zip = aDecoder.decodeObjectForKey(kAgentZip) as! String
        self.latitudeString = aDecoder.decodeObjectForKey(kAgentLatitude) as! String
        self.longitudeString = aDecoder.decodeObjectForKey(kAgentLongitude) as! String
        self.email = aDecoder.decodeObjectForKey(kAgentEmail) as! String
        self.businessName = aDecoder.decodeObjectForKey(kAgentBusinessName) as! String
        self.businessTypeSold = aDecoder.decodeObjectForKey(kBusinessTypeSold) as! String
        self.FarmBureauExclusiveAgent = aDecoder.decodeObjectForKey(kFarmBureauExclusiveAgent) as! Bool
    }
}