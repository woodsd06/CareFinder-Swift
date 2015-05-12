//
//  Dashboard.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/22/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class Dashboard
{
    var totalAnnualSpending: NSNumber = 0
    var paidByWellmark: NSNumber = 0
    var yourResp: NSNumber = 0
    var networkSavings: NSNumber = 0
    
    var remainingDeductible: NSNumber = 0
    var remainingDeductibleSpent: NSNumber = 0
    var remainingOutOfPocket: NSNumber = 0
    var remainingOutOfPocketSpent: NSNumber = 0
    
    var hsaBalance: NSNumber = 0
    var fsaBalance: NSNumber = 0
    
    var wellnessPoints: NSNumber = 0
    
    var recentClaimsArray = [AnyObject]()
    
    func deserialize(json: [String: AnyObject])
    {
        if let claimResDic = json["ClaimResponse"] as? [String: AnyObject]
        {
            if let claimsArr = claimResDic["Claims"] as? [[String: AnyObject]]
            {
                var annualSpending: Float = 0.0;
                var yourResp: Float = 0.0;
                var networkSaving: Float = 0.0;
                var paidByWellmark: Float = 0.0;
                for dic in claimsArr
                {
                    annualSpending += dic["Amounts"]!["TotalBilled"] as! Float
                    yourResp += dic["Amounts"]!["TotalMemberOweAmount"] as! Float
                    paidByWellmark += dic["Amounts"]!["PaidAmount"] as! Float
                    networkSaving += dic["Amounts"]!["TotalProviderSavings"] as! Float
                }
                self.totalAnnualSpending = NSNumber(float:annualSpending)
                self.yourResp = NSNumber(float:yourResp)
                self.paidByWellmark = NSNumber(float:paidByWellmark)
                self.networkSavings = NSNumber(float:networkSaving)
            }
        }
    }
    
    func deserializeRecentClaim(json: [String: AnyObject])
    {
        if let claimResDic = json["ClaimResponse"] as? [String: AnyObject]
        {
            var claimsArr = claimResDic["Claims"] as! [[String: AnyObject]]
            var count: Int = 0
            self.recentClaimsArray = [AnyObject]()
            for dic in claimsArr
            {
                if (count < 3)
                {
                    var cl = ClaimList()
                    cl.deserialize(dic)
                    self.recentClaimsArray.append(cl)
                    count++
                }
            }
        }
    }
}