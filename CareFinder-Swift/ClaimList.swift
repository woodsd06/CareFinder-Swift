//
//  ClaimList.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/22/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class ClaimList
{
    var providerName: String = ""
    var memberFirstName: String = ""
    var claimStatus: StatusType = .kProcessing
    var dateOfService: String = ""
    var totalBilled: NSNumber = 0
    
    func deserialize(dic: [String: AnyObject])
    {
        self.providerName = dic["Provider"]!["Name"] as! String
        self.dateOfService = dic["FirstDateOfService"] as! String
        self.memberFirstName = dic["Patient"]!["FirstName"] as! String
        
        if (dic["ClaimStatus"] as! String == "Paid")
        {
            self.claimStatus = .kWellmarkPaidYouPaid;
        }
        else if (dic["ClaimStatus"] as! String == "Denied")
        {
            self.claimStatus = .kWellmarkPaidYouNotPaid;
        }
        else if (dic["ClaimStatus"] as! String == "Pending")
        {
            self.claimStatus = .kProcessing;
        }
        
        self.totalBilled = dic["Amounts"]!["TotalBilled"] as! NSNumber
    }
}