//
//  CNDoctorReviewLookupTable.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/22/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class CNDoctorReviewLookupTable
{
    static let sharedInstance = CNDoctorReviewLookupTable()
    
    func ratingForValue(ratingValue: Double) -> Float
    {
        if (ratingValue >= 0 && ratingValue <= 0.0624)
        {
            return 1;
        }
        else if (ratingValue >= 0.0625 && ratingValue <= 0.1874)
        {
            return 1.5;
        }
        else if (ratingValue >= 0.1875 && ratingValue <= 0.3124)
        {
            return 2;
        }
        else if (ratingValue >= 0.3125 && ratingValue <= 0.4374)
        {
            return 2.5;
        }
        else if (ratingValue >= 0.4375 && ratingValue <= 0.5624)
        {
            return 3;
        }
        else if (ratingValue >= 0.5625 && ratingValue <= 0.6874)
        {
            return 3.5;
        }
        else if (ratingValue >= 0.6875 && ratingValue <= 0.8124)
        {
            return 4;
        }
        else if (ratingValue >= 0.8125 && ratingValue <= 0.9374)
        {
            return 4.5;
        }
        else if (ratingValue >= 0.9375 && ratingValue <= 1)
        {
            return 5;
        }
        
        return 0;
    }
    
    func valueForRating(rating: Int) -> Double
    {
        if (rating == 1)
        {
            return 0.0;
        }
        else if(rating == 2)
        {
            return 0.25;
        }
        else if(rating == 3)
        {
            return 0.50;
        }
        else if(rating == 4)
        {
            return 0.75;
        }
        else if(rating == 5)
        {
            return 1.00;
        }
        
        return 0;
    }
    
    func percentForValue(percentValue: Double) -> String
    {
        return String(format: "%.1f%%", percentValue * 100)
    }
}