//
//  DentistSpecialtyEngine.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/22/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

class DentistSpecialtyEngine: MKNetworkEngine
{
    func startOperationWithUrl(remoteURL: String) -> MKNetworkOperation
    {
        var op = self.operationWithURLString(remoteURL, params: nil)
        op.freezable = true
        self.enqueueOperation(op)
        return op
    }
    
    func saveSpecialityData(jsonObj: AnyObject)
    {
        //NSDictionary *noPreferenceObjectDictionary=[NSDictionary dictionaryWithObjectsAndKeys:@"No Preference",@"Description", @"No Preference",@"SpecialtyID",nil];
        var noPreferenceObjectDictionary = Dictionary(dictionaryLiteral: ("Description", "No Preference"), ("SpecialtyID", "No Preference"))
        //id json=[jsonObj mutableCopy];
        var json: AnyObject = jsonObj.mutableCopy()
        //[json addObject:noPreferenceObjectDictionary];
        json.addObject(noPreferenceObjectDictionary)
        //NSMutableArray *specialities = [[NSMutableArray alloc]init];
        var specialities = [AnyObject]()
        //for (NSDictionary *specialityDict in json) {
            //Speciality *speciality = [[Speciality alloc] init];
            //[speciality deserialize:specialityDict];
            //[specialities addObject:speciality];
        //}
        for specialityDict: Dictionary in json
        {
            
        }
        //NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"desc" ascending:YES];
        //NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
        //NSArray *sortedSpecialityArray = [specialities sortedArrayUsingDescriptors:sortDescriptors];
        //NSMutableArray *sortedMutablesSpeArray=[NSMutableArray arrayWithArray:sortedSpecialityArray];
        ///Get that No Preference object from array
        //__block id noPreferenceObject= nil;
        //[sortedMutablesSpeArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //if ([[obj desc] isEqualToString:@"No Preference"]) {
        //noPreferenceObject=obj;///store in temp object
        //[sortedMutablesSpeArray removeObject:obj];
        //}
        //}];
        //[sortedMutablesSpeArray insertObject:noPreferenceObject atIndex:0];
        //AppDelegate *appDelegate = kAppDelegate;
        //[appDelegate.DentistSpecialitiesArray removeAllObjects];
        //[appDelegate.DentistSpecialitiesArray addObjectsFromArray:sortedMutablesSpeArray];
        //[appDelegate saveDentistSpeciality:appDelegate.DentistSpecialitiesArray];///do not need this line
        //noPreferenceObject=nil;
    }
    
    func operationFailed(error: NSError?)
    {
        if (error != nil)
        {
            // If failed to fetch data from remote then show the old data stored in plist
            var appDelegate = kAppDelegate
            appDelegate.retrieveFromDentistSpecialPlist()
        }
    }
}