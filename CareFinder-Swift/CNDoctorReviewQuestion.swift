//
//  CNDoctorReviewQuestion.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/22/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class CNDoctorReviewQuestion
{
    var title: String = ""
    var questionDescription: String = ""
    var index: Int = 0
    var isManadatory: Bool = false
    var viewType: CNDoctorReviewQuestionViewType = CNDoctorReviewQuestionViewType.CNDoctorReviewQuestionViewTypeRating
    var answer: CNDoctorReviewAnswer = CNDoctorReviewAnswer()
    
    func description() -> String
    {
        return String(format: "\n title %@ descrption %@ viewType %d index %d ismandatory %d answer %@", arguments: [title, questionDescription, viewType.rawValue, index, isManadatory, answer.description()])
    }
}