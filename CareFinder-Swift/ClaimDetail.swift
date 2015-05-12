//
//  ClaimDetail.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/22/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class ClaimDetail
{
    var providerName: String = ""
    var patientName: String = ""
    var claimStatus: StatusType = .kProcessing
    var claimStatusStr: String = ""
    var totalBilled: NSNumber = 0
    
    var paidAmount: NSNumber = 0
    var yourResp: NSNumber = 0
    var totalProviderLiablility: NSNumber = 0
    var totalMemberLiablility: NSNumber = 0
    
    var firstDateOfService: String = ""
    var claimNumber: String = ""
    var claimReceiptDate: String = ""
    var claimProcessedDesc: String = ""
    var placeOfService: String = ""
    var providerContractStatus: String = ""
    var claimLinesArr = [ClaimsLine]()
    
    func deserialize(dic: [String: AnyObject])
    {
        self.providerName = dic["Provider"]!["Name"] as! String
        self.firstDateOfService = dic["FirstDateOfService"] as! String
        self.patientName = dic["Patient"]!["Name"] as! String
        
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
        
        self.claimStatusStr = dic["ClaimStatus"] as! String
        self.totalBilled = dic["Amounts"]!["TotalBilled"] as! NSNumber
        self.totalProviderLiablility = dic["Amounts"]!["TotalProviderLiability"] as! NSNumber
        self.paidAmount = dic["Amounts"]!["PaidAmount"] as! NSNumber
        self.claimNumber = dic["ICN"] as! String
        self.claimReceiptDate = dic["ClaimReceiptDate"] as! String
        self.claimProcessedDesc = dic["ClaimProcessedDesc"] as! String
        self.placeOfService = dic["PlaceOfServiceDesc"] as! String
        self.providerContractStatus = dic["ProviderContractStatusDesc"] as! String
        
        if (dic["TotalMemberLiability"] != nil)
        {
            self.totalMemberLiablility = dic["TotalMemberLiability"] as! NSNumber
        }
        else
        {
            self.totalMemberLiablility = NSNumber(float: 0.00)
        }
        
        var claimLineArr = dic["Lines"] as! [AnyObject]
        for dic in claimLineArr
        {
            var claimsLine = ClaimsLine()
            claimsLine.deserialize(dic as! [String : AnyObject])
            claimsLine.providerName = self.providerName
            self.claimLinesArr.append(claimsLine)
        }
    }
}