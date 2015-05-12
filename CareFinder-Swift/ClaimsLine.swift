//
//  ClaimsLine.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/22/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class ClaimsLine
{
    var lineNumber: NSNumber = 0
    var providerName: String = ""
    var procedureDes: String = ""
    var billedAmount: NSNumber = 0
    var firstDateOfService: String = ""
    var amountMemberLiability: NSNumber = 0
    var providerSavingAmount: NSNumber = 0
    var amountLinePaidAmount: NSNumber = 0
    var amountUnitsOfService: NSNumber = 0
    var placeOfServiceDescription: String = ""
    
    func deserialize(dic: [String: AnyObject])
    {
        self.lineNumber = dic["LineNumber"] as! NSNumber
        self.providerName = dic[""] as! String
        self.procedureDes = dic["ProcedureDescription"] as! String
        self.billedAmount = dic["BilledAmount"] as! NSNumber
        self.firstDateOfService = dic["FirstDateOfService"] as! String
        self.amountMemberLiability = dic["Amounts"]!["MemberLiability"] as! NSNumber
        self.providerSavingAmount = dic["Amounts"]!["ProviderSavingsAmount"] as! NSNumber
        self.amountLinePaidAmount = dic["Amounts"]!["LinePaidAmount"] as! NSNumber
        self.amountUnitsOfService = dic["Amounts"]!["UnitsOfService"] as! NSNumber
        self.placeOfServiceDescription = dic["PlaceOfServiceDescription"] as! String
    }
}