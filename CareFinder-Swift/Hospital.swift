//
//  Hospital.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/22/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class Hospital: NSCoding
{
    var firstName: String
    var middleName: String
    var lastName: String
    var suffix: String
    var address: String
    var city: String
    var state: String
    var county: String
    var distance: String
    var phone: String
    var providerID: String
    var addressID: String
    var zip: String
    var gender: String
    var latitudeString: String
    var longitudeString: String
    var accreditationsArray: [AnyObject]
    var certificationsArray: [AnyObject]
    var languagesArray: [AnyObject]
    var hospitalPrivilegesArray: [AnyObject]
    var networksArray: [AnyObject]
    var specialitiesArray: [AnyObject]
    var keysArray: [AnyObject]
    var valuesArray: [AnyObject]
    var isDescription: Bool = false
    var blueDistBariatricSurgery: NSNumber
    var blueDistCardiac: NSNumber
    var blueDistKneeHipReplace: NSNumber
    var blueDistOncology: NSNumber
    var blueDistRareCompCancer: NSNumber
    var blueDistSpine: NSNumber
    var blueDistTransplant: NSNumber
    var hospitalName: String
    
    func deserialize(json: [String: AnyObject])
    {
        self.keysArray = [AnyObject]()
        self.valuesArray = [AnyObject]()
        
        if (isDescription)
        {
            var detailKeysArray = json.keys
            var tempDict = [String: AnyObject]()
            
            for key:String in detailKeysArray
            {
                if (key.rangeOfString("COQ") != nil)
                {
                    tempDict[key] = json[key]
                }
            }
            
            if (!tempDict.keys.isEmpty)
            {
                var tempKeyArray = tempDict.keys
                for COQKey:String in tempKeyArray
                {
                    var key = COQKey.stringByReplacingOccurrencesOfString("COQ", withString: "")
                    self.keysArray.append(key)
                    self.valuesArray.append(tempDict[COQKey]!)
                }
            }
        }
        
        if (json["AltName"] != nil) { self.hospitalName = json["AltName"] as! String }
        
        if (json["FirstName"] != nil) { self.firstName = json["FirstName"] as! String }
        
        if (json["MiddleName"] != nil) { self.middleName = json["MiddleName"] as! String }
        
        if (json["LastName"] != nil) { self.lastName = json["LastName"] as! String }
        
        if (json["Suffix"] != nil) { self.suffix = json["Suffix"] as! String }
        
        if (json["Address"] != nil) { self.address = json["Address"] as! String }
        
        if (json["City"] != nil) { self.city = json["City"] as! String }
        
        if (json["County"] != nil) { self.county = json["County"] as! String }
        
        if (json["State"] != nil) { self.state = json["State"] as! String }
        
        if (json["ProviderID"] != nil) { self.providerID = json["ProviderID"] as! String }
        
        if (json["Phone"] != nil)
        {
            var string = json["Phone"] as! String
            var myString = string.stringByReplacingOccurrencesOfString(" ", withString: "")
            if (myString != "")
            {
                var range = NSRange()
                range.length = 3
                range.location = 3
                
                self.phone = String(format: "%@-%@-%@", arguments: [(myString as NSString).substringToIndex(3), (myString as NSString).substringWithRange(range), (myString as NSString).substringFromIndex(6)])
            }
            else
            {
                self.phone = myString
            }
        }
        
        if (json["Specialties"] != nil)
        {
            if let tempString = json["Specialties"] as? String
            {
                self.specialitiesArray = tempString.componentsSeparatedByString("; ")
            }
            else if let tempArray = json["Specialties"] as? [AnyObject]
            {
                self.specialitiesArray = tempArray[0].objectForKey("Description")!.componentsSeparatedByString("; ")
            }
            
            self.specialitiesArray = NSSet(array: self.specialitiesArray).allObjects
        }
        
        if (json["Distance"] != nil) { self.distance = json["Distance"] as! String }
        
        if (json["ZIP"] != nil) { self.zip = json["ZIP"] as! String }
        
        if (json["Networks"] != nil)
        {
            if let tempString = json["Networks"] as? String
            {
                self.networksArray = tempString.componentsSeparatedByString("; ")
            }
            else if let tempArray = json["Networks"] as? [AnyObject]
            {
                self.networksArray = tempArray
            }
            
            self.networksArray = NSSet(array: self.networksArray).allObjects
        }
        
        if (json["Languages"] != nil)
        {
            if let tempString = json["Languages"] as? String
            {
                self.languagesArray = tempString.componentsSeparatedByString("; ")
            }
            else if let tempArray = json["Languages"] as? [AnyObject]
            {
                self.languagesArray = tempArray
            }
            
            self.languagesArray = NSSet(array: self.languagesArray).allObjects
        }
        
        if (json["HospitalPrivileges"] != nil)
        {
            if let tempString = json["HospitalPrivileges"] as? String
            {
                self.hospitalPrivilegesArray = tempString.componentsSeparatedByString("; ")
            }
            else if let tempArray = json["HospitalPrivileges"] as? [AnyObject]
            {
                self.hospitalPrivilegesArray = tempArray
            }
            
            self.hospitalPrivilegesArray = NSSet(array: self.hospitalPrivilegesArray).allObjects
        }

        if (json["Accredidations"] != nil)
        {
            if let tempString = json["Accredidations"] as? String
            {
                self.accreditationsArray = tempString.componentsSeparatedByString("; ")
            }
            else if let tempArray = json["Accredidations"] as? [AnyObject]
            {
                self.accreditationsArray = tempArray
            }
            
            self.accreditationsArray = NSSet(array: self.accreditationsArray).allObjects
        }
        
        if (json["Gender"] != nil) { self.gender = json["Gender"] as! String }
        
        if (json["BlueDistBariatricSurgery"] != nil) { self.blueDistBariatricSurgery = json["BlueDistBariatricSurgery"] as! NSNumber }
        
        if (json["BlueDistCardiac"] != nil) { self.blueDistCardiac = json["BlueDistCardiac"] as! NSNumber }
        
        if (json["BlueDistKneeHipReplace"] != nil) { self.blueDistKneeHipReplace = json["BlueDistKneeHipReplace"] as! NSNumber }
        
        if (json["BlueDistOncology"] != nil) { self.blueDistOncology = json["BlueDistOncology"] as! NSNumber }
        
        if (json["BlueDistRareCompCancer"] != nil) { self.blueDistRareCompCancer = json["BlueDistRareCompCancer"] as! NSNumber }
        
        if (json["BlueDistSpine"] != nil) { self.blueDistSpine = json["BlueDistSpine"] as! NSNumber }
        
        if (json["BlueDistTransplant"] != nil) { self.blueDistTransplant = json["BlueDistTransplant"] as! NSNumber }
        
        if (json["Latitude"] != nil) { self.latitudeString = json["Latitude"] as! String }
        
        if (json["Longitude"] != nil) { self.longitudeString = json["Longitude"] as! String }
        
        if (json["AddressID"] != nil && json["AddressID"] as! String != "") { self.addressID = json["AddressID"] as! String }
    }
    
    @objc func encodeWithCoder(aCoder: NSCoder)
    {
        aCoder.encodeObject(firstName, forKey: kDoctorFirstName)
        aCoder.encodeObject(middleName, forKey: kDoctorMiddleName)
        aCoder.encodeObject(lastName, forKey: kDoctorLastName)
        aCoder.encodeObject(suffix, forKey: kDoctorSuffix)
        aCoder.encodeObject(address, forKey: kDoctorAddress)
        aCoder.encodeObject(city, forKey: kDoctorCity)
        aCoder.encodeObject(state, forKey: kDoctorState)
        aCoder.encodeObject(county, forKey: kDoctorCounty)
        aCoder.encodeObject(phone, forKey: kDoctorPhoneNumber)
        aCoder.encodeObject(providerID, forKey: kDoctorProviderID)
        aCoder.encodeObject(specialitiesArray, forKey: kDoctorSpecialities)
        aCoder.encodeObject(zip, forKey: kDoctorZip)
        aCoder.encodeObject(distance, forKey: kDoctorDistance)
        aCoder.encodeObject(gender, forKey: kDoctorGender)
        aCoder.encodeObject(accreditationsArray, forKey: kDoctorAccreditionsArray)
        aCoder.encodeObject(languagesArray, forKey: kDoctorLanguagesArray)
        aCoder.encodeObject(certificationsArray, forKey: kDoctorCertificationsArray)
        aCoder.encodeObject(hospitalPrivilegesArray, forKey: kDoctorHospitalPrivilegesArray)
        aCoder.encodeObject(networksArray, forKey: kDoctorNetworksArray)
        aCoder.encodeObject(keysArray, forKey: kDoctorCOQKeysArray)
        aCoder.encodeObject(valuesArray, forKey: kDOctorCOQValuesArray)
        
        aCoder.encodeObject(blueDistBariatricSurgery, forKey: kBlueDistBariatricSurgery)
        aCoder.encodeObject(blueDistCardiac, forKey: KBlueDistCardiac)
        aCoder.encodeObject(blueDistKneeHipReplace, forKey: KBlueDistKneeHipReplace)
        aCoder.encodeObject(blueDistOncology, forKey: KBlueDistOncology)
        aCoder.encodeObject(blueDistRareCompCancer, forKey: KBlueDistRareCompCancer)
        aCoder.encodeObject(blueDistSpine, forKey: KBlueDistSpine)
        aCoder.encodeObject(blueDistTransplant, forKey: KBlueDistTransplant)
        
        aCoder.encodeObject(latitudeString, forKey: KLatitude)
        aCoder.encodeObject(longitudeString, forKey: KLongitude)
        aCoder.encodeObject(addressID, forKey: KAddressID)
        
        aCoder.encodeObject(hospitalName, forKey: kHospitalName)
    }
    
    @objc required init(coder aDecoder: NSCoder)
    {
        //super.init()
        
        self.firstName = aDecoder.decodeObjectForKey(kDoctorFirstName) as! String
        self.middleName = aDecoder.decodeObjectForKey(kDoctorMiddleName) as! String
        self.lastName = aDecoder.decodeObjectForKey(kDoctorLastName) as! String
        self.address = aDecoder.decodeObjectForKey(kDoctorAddress) as! String
        self.city = aDecoder.decodeObjectForKey(kDoctorCity) as! String
        self.state = aDecoder.decodeObjectForKey(kDoctorState) as! String
        self.county = aDecoder.decodeObjectForKey(kDoctorCounty) as! String
        self.distance = aDecoder.decodeObjectForKey(kDoctorDistance) as! String
        self.phone = aDecoder.decodeObjectForKey(kDoctorPhoneNumber) as! String
        self.providerID = aDecoder.decodeObjectForKey(kDoctorProviderID) as! String
        self.suffix = aDecoder.decodeObjectForKey(kDoctorSuffix) as! String
        self.specialitiesArray = aDecoder.decodeObjectForKey(kDoctorSpecialities) as! Array
        self.zip = aDecoder.decodeObjectForKey(kDoctorZip) as! String
        self.gender = aDecoder.decodeObjectForKey(kDoctorGender) as! String
        self.networksArray = aDecoder.decodeObjectForKey(kDoctorNetworksArray) as! Array
        self.languagesArray = aDecoder.decodeObjectForKey(kDoctorLanguagesArray) as! Array
        self.accreditationsArray = aDecoder.decodeObjectForKey(kDoctorAccreditionsArray) as! Array
        self.certificationsArray = aDecoder.decodeObjectForKey(kDoctorCertificationsArray) as! Array
        self.hospitalPrivilegesArray = aDecoder.decodeObjectForKey(kDoctorHospitalPrivilegesArray) as! Array
        self.keysArray = aDecoder.decodeObjectForKey(kDoctorCOQKeysArray) as! Array
        self.valuesArray = aDecoder.decodeObjectForKey(kDOctorCOQValuesArray) as! Array
        
        self.blueDistBariatricSurgery = aDecoder.decodeObjectForKey(kBlueDistBariatricSurgery) as! NSNumber
        self.blueDistCardiac = aDecoder.decodeObjectForKey(KBlueDistCardiac) as! NSNumber
        self.blueDistKneeHipReplace = aDecoder.decodeObjectForKey(KBlueDistKneeHipReplace) as! NSNumber
        self.blueDistOncology = aDecoder.decodeObjectForKey(KBlueDistOncology) as! NSNumber
        self.blueDistRareCompCancer = aDecoder.decodeObjectForKey(KBlueDistRareCompCancer) as! NSNumber
        self.blueDistSpine = aDecoder.decodeObjectForKey(KBlueDistSpine) as! NSNumber
        self.blueDistTransplant = aDecoder.decodeObjectForKey(KBlueDistTransplant) as! NSNumber
        
        self.latitudeString = aDecoder.decodeObjectForKey(KLatitude) as! String
        self.longitudeString = aDecoder.decodeObjectForKey(KLongitude) as! String
        self.addressID = aDecoder.decodeObjectForKey(KAddressID) as! String
        
        self.hospitalName = aDecoder.decodeObjectForKey(kHospitalName) as! String
    }
}