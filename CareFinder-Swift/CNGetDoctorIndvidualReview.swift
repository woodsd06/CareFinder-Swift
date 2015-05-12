//
//  CNGetDoctorIndvidualReview.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/22/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

let kCNDocIndividualReviewRating = "Rating"
let kCNDocIndividualReviewComents = "comments"
let kCNDocIndividualReviewDate = "date"
let kCNDocIndividualReviewID = "id"

let kCNDocIndividualReviewComment = "Comment"
let kCNDocIndividualReviewDislikes = "Dislikes"
let kCNDocIndividualReviewFlags = "Flags"
let kCNDocIndividualReviewLikes = "Likes"
let kCNDocIndividualReviewOverallRating = "OverallRating"
let kCNDocIndividualReviewPredicateResponse = "PredicateResponse"
let kCNDocIndividualReviewId = "ReviewID"
let kCNDocIndividualReviewReviewTimestamp = "ReviewTimestamp"

class CNGetDoctorIndvidualReview
{
    var rating: Int
    var comments: String
    var date: String
    var reviewId: String
    
    var disLikes: String
    var likes: String
    var flags: String
    
    init(dict: [String: AnyObject])
    {
        self.date = dict[kCNDocIndividualReviewDate] as! String
        self.comments = dict[kCNDocIndividualReviewComents] as! String
        self.rating = dict[kCNDocIndividualReviewRating] as! Int
        self.reviewId = dict[kCNDocIndividualReviewID] as! String
        
        self.disLikes = ""
        self.likes = ""
        self.flags = ""
    }
    
    init(JSON: [String: AnyObject])
    {
        self.date = JSON[kCNDocIndividualReviewReviewTimestamp] as! String
        self.comments = JSON[kCNDocIndividualReviewComment] as! String
        self.rating = JSON[kCNDocIndividualReviewOverallRating] as! Int
        self.reviewId = JSON[kCNDocIndividualReviewId] as! String
        
        self.disLikes = JSON[kCNDocIndividualReviewDislikes] as! String
        self.likes = JSON[kCNDocIndividualReviewLikes] as! String
        self.flags = JSON[kCNDocIndividualReviewFlags] as! String
    }
    
    func description() -> String
    {
        return String(format: "date %@ comments %@ rating %d reviewId %@", date, comments, rating, reviewId)
    }
}