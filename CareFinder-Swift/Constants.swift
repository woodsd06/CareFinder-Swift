//
//  Constants.swift
//  CareFinder-Swift
//
//  Created by Derek Woods on 4/21/15.
//  Copyright (c) 2015 Wellmark. All rights reserved.
//

import Foundation

enum kRequestType: Int
{
    case kHospital = 0
    case kDoctor
    case kDentalProviders
    case kDentalCounts
    case kDentistIndividual
}

//#define FOOTER  ([[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.tableView.frame.size.height)])
//#define IS_IPHONE_DEVICE (!IS_IPAD_DEVICE)
//#define IS_IPAD_DEVICE (UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPhone)

//#define kDeviceScreenHeight ([[UIScreen mainScreen] bounds].size.height)
//#define kDeviceScreenWidth ([[UIScreen mainScreen] bounds].size.width)
//#define  KscreenHeight   ([[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationLandscapeLeft || [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationLandscapeRight ? 748 : 1004)
//#define KscreenWidth ( [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationLandscapeLeft || [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationLandscapeRight ? 1024 : 768)

//#define getImageFromBundle(Object,Type) (Type *)([UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:Object ofType:nil]])

//#define DLOG(p,v)  NSLog(@"%@ --%@:",p, v);

//#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
//#define IS_IPHONE5 (([[UIScreen mainScreen] bounds].size.height-568)?NO:YES)
//#define IS_IPHONE6 (([[UIScreen mainScreen] bounds].size.height-667)?NO:YES)
//#define IS_IPHONE6PLUS (([[UIScreen mainScreen] bounds].size.height-736)?NO:YES)
//#define IS_IPHONE4 (([[UIScreen mainScreen] bounds].size.height-480)?NO:YES)
let networkError = "Unable to connect to server. Please try again."

////// FONT
let kHelveticaNeueFont = "HelveticaNeue"
let kHelveticaNeueFontLight = "HelveticaNeue-Light"
let kHelveticaNeueFontBold = "HelveticaNeue-Bold"
let kHelveticaNeueFontBoldItalic = "HelveticaNeue-BoldItalic"
////// COLOR CODE
//#define CLEARCOLOR [UIColor clearColor]
//#define NORMALTEXTCOLOR [UIColor colorWithRed:(223.0/255.0) green:(223.0/255.0) blue:(223.0/255.0) alpha:1.0]
//#define WINDOWTINTCOLOR  [UIColor  colorWithRed:(0.0/255.0) green:(121.0/255.0) blue:(188.0/255.0) alpha:1]
//#define WINDOWTINTCOLORWHITE  [UIColor  colorWithRed:(255.0/255.0) green:(255.0/255.0) blue:(255.0/255.0) alpha:1]
//#define CELLTEXTCOLOR [UIColor  colorWithRed:(51.0/255.0) green:(51.0/255.0) blue:(51.0/255.0) alpha:1]
//#define CELLTEXTLABELCOLOR [UIColor  colorWithRed:(68.0/255.0) green:(68.0/255.0) blue:(68.0/255.0) alpha:1]
//#define CELLSUBTITLETEXTCOLOR [UIColor  colorWithRed:(142.0/255.0) green:(142.0/255.0) blue:(142.0/255.0) alpha:1]
//#define CELLRIGHTDETAILTEXTCOLOR [UIColor  colorWithRed:(102.0/255.0) green:(102.0/255.0) blue:(102.0/255.0) alpha:1]
//#define SECTIONHEADERBACKGROUNDCOLOR [UIColor  colorWithRed:(236.0/255.0f) green:(236.0/255.0f) blue:(242.0/255.0f) alpha:1]
//#define SEPERATORCOLOR [UIColor  colorWithRed:(200/255.0) green:199/255.0 blue:204/255.0 alpha:1] ///[UIColor  colorWithRed:0xC8/255.0 green:0xC7/255.0 blue:0xcc/255.0 alpha:1]
//#define CELLBGCOLOR [UIColor  colorWithRed:(239.0/255.0) green:(239.0/255.0) blue:(244.0/255.0) alpha:1]
//#define TEXTREDCOLOR [UIColor  colorWithRed:(134.0/255.0) green:(26.0/255.0) blue:(82.0/255.0) alpha:1]
//#define TEXTBLUECOLOR [UIColor  colorWithRed:(0.0/255.0) green:(121.0/255.0) blue:(188.0/255.0) alpha:1]
//#define planAcceeptedColor [UIColor  colorWithRed:(136.0/255.0) green:(154.0/255.0) blue:(65.0/255.0) alpha:1]

// GA strings constants

// MARK: NOTIFICATION NAME
let LEFT_PANEL_VIEW_TAPPED = "LEFT_PANEL_VIEW_TAPPED"

// MAIN SCREENS ICON SELECTION TRACKING
let Home_Screen_Icons = "Home Screen Icons"
let Icon_Selection_Home = "Icon Selection - Home"
let Find_Screen_Icons = "Find Screen Icons"
let Icon_Selection_Find = "Icon Selection - Find"
let Find_A_Doctor = "Find A Doctor"
let Find_A_Dentist = "Find a Dentist"
let Find_A_Facility = "Find a Facility"
let Find_A_Agent = "Find an Agent"

// FIND A DOCTOR SCREEN TRACKING
let Find_a_Doctor_Home = "Find a Doctor Home"
let Enter_Location_Doctor = "Enter Location - Doctor"
let Manual_Location_Entry = "Manual Location Entry"
let Click_Information_Icon_Doctor = "Click Information Icon - Doctor"
let Get_More_Information = "Get More Information"
let Search_Doctor = "Search - Doctor"
let Find_a_Doctor_Search = "Find a Doctor Search"

// FIND A AGENT SCREEN TRACKING
let Find_a_Agent_Home = "Find an Agent Home"
let Enter_Location_Agent = "Enter Location - Agent"
let Click_Information_Icon_Agent = "Click Information Icon - Agent"
let Search_Agent = "Search - Agent"
let Find_a_Agent_Search = "Find an Agent Search"
let Call_Agent = "Call Agent"
let Find_a_Agent_Details = "Find an Agent Details"
let Locate_Agent = "Locate Agent"
let Map_Agent_Location = "Map Agent Location"
let Set_Favorite_Agent = "Set Favorite - Agent"
let Save_Agent_in_Favorites = "Save Agent to Favorites"

// FIND A DOCTOR SEARCH RESULTS SCREEN TRACKING
let Find_a_Doctor_Results = "Find a Doctor Results"
let Click_Filter_Doctor = "Click Filter - Doctor"
let Filter_Search_Results = "Filter Search Results"
let Change_Search_Distance_Filter = "Change Search Distance Filter"
let Call_Doctor = "Call Doctor"
let Click_Phone_Number = "Click Phone Number"
let Tab_Navigation_Doctor = "Tab Navigation - Doctor"
let Nearest_Tab = "Nearest Tab"
let Map_Tab = "Map Tab"

// FIND A DOCTOR DETAILS SCREEN TRACKING
let Find_a_Doctor_Details = "Find a Doctor Details"
let Set_Favorite_Doctor = "Set Favorite - Doctor"
let Save_Doctor_in_Favorites = "Save Doctor in Favorites"
//let Call_Doctor = "Call Doctor" - dupe
let Locate_Doctor = "Locate Doctor"
let Map_Doctors_Office = "Map Doctors Office"
let Driving_Directions = "Driving Directions"
let View_Other_Locations = "View Other Locations"
let Summary_Tab = "Summary Tab"
let More_Info_Tab = "More Info Tab"
let Collaboration_on_Quality = "Collaboration on Quality"

// FIND A DOCTOR OTHER LOCATIONS SCREEN TRACKING
let Find_a_Doctor_Other_Locations = "Find a Doctor Other Locations"

// FIND A FACILITY SCREEN TRACKING
let Find_a_Facility_Home = "Find a Facility Home"
let Enter_Location_Facility = "Enter Location - Facility"
//let Manual_Location_Entry = "Manual Location Entry" - dupe
let Click_Information_Icon_Facility = "Click Information Icon - Facility"
//let Get_More_Information = "Get More Information" - dupe
let Search_Facility = "Search - Facility"
let Find_a_Facility_Search = "Find a Facility Search"

// FIND A FACILITY SEARCH RESULTS SCREEN TRACKING
let Find_a_Facility_Results = "Find a Facility Results"
let Click_Filter_Facility = "Click Filter - Facility"
let Call_Facility = "Call Facility"
let Tab_Navigation_Facility = "Tab Navigation - Facility"

// FIND A FACILITY DETAILS SCREEN TRACKING
let Find_a_Facility_Details = "Find a Facility Details"
let Set_Favorite_Facility = "Set Favorite - Facility"
let Save_Facility_in_Favorites = "Save Facility in Favorites"
let Locate_Facility = "Locate Facility"
let Map_Facility = "Map Facility"
//let Tab_Navigation_Facility = "Tab Navigation - Facility" - dupe

// FIND A FACILITY OTHER LOCATIONS SCREEN TRACKING
let Find_a_Facility_Other_Locations = "Find a Facility Other Locations"

// FIND A AGENT SCREEN TRACKING
let Find_an_Agent_Results = "Find_an_Agent_Results"
let Click_Filter_Agent = "Click_Filter_Agent"
let Agent_Filter_Search_Results = "Agent_Filter_Search_Results"
let Tab_Navigation_Agent = "Tab Navigation - Agent"

// FIND A DENTIST SCREEN TRACKING
let Find_a_Dentist_Home = "Find a Dentist Home"
let Enter_Location_Dentist = "Enter Location - Dentist"
let Search_Dentist = "Search - Dentist"
let Find_a_Dentist_Search = "Find a Dentist Search"

// FIND A DENTIST SEARCH RESULTS SCREEN TRACKING
let Find_a_Dentist_Results = "Find a Dentist Results"
let Click_Filter_Dentist = "Click Filter - Dentist"
let Call_Dentist = "Call Dentist"
let Tab_Navigation_Dentist = "Tab Navigation - Dentist"

// FIND A DENTIST DETAILS SCREEN TRACKING
let Find_a_Dentist_Details = "Find a Dentist Details"
let Set_Favorite_Dentist = "Set Favorite - Dentist"
let Save_Dentist_in_Favorites = "Save Dentist in Favorites"
let Locate_Dentist = "Locate Dentist"
let Map_Dentists_Office = "Map Dentists Office"

// PERSONAL HEALTH ASSISTANT SCREEN TRACKING
let Personal_Health_Assistant = "Personal Health Assistant"
let Call_PHA = "Call PHA"
let Click_Call_Button = "Click Call Button"
//let Click_Phone_Number = "Click Phone Number" - dupe
let Click_Information_Icon_PHA = "Click Information Icon - PHA"
//let Get_More_Information = "Get More Information" - dupe
let PHA_Call_Button_Tag = 100
let PHA_Phone_Number_Tag = 101

// HISTORY SCREEN TRACKING
let History_Results = "History Results"
let Call_from_History = "Call from History"

let UnableToConnectError = "Sorry we can’t connect right now.  Please check your internet connection or try again later. Please try calling us one of the numbers below if you need immidiate assistance.\n\n\t\u{2022} If you have questions about your \n\t benefits call\n\t\t1-855-782-4209\n\n\t\u{2022} If you need immidiate assistance \n\t answering health questions call\n\t\t1-855-782-4209"

let kAppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

let kSearchingViewTag = 200
let kSelectedPlan = "SelectedPlan"
let kSelectedDentalPlan = "SelectedDentalPlan"
let kSelectedRadius = "SelectedRadius"
let kSelectedRadiusValue = "SelectedRadiusValue"
let kSelectedSpeciality = "SelectedSpeciality"
let kSelectedDoctorType = "SelectedDoctorType"
let kSelectedDentistType = "SelectedDentistType"
let kSelectedState = "SelectedState"
let kSelectedCounty = "SelectedCounty"
let kSelectedPlanName = "SelectedPlanName"
let kSelectedDentalPlanName = "SelectedDentalPlanName"
let kSelectedSpecialityRow = "SelectedSpecialityRow"
let kSelectedSpecialitySection = "SelectedSpecialitySection"
let kSelectedSpecialityIndex = "SelectedSpecialityIndex"
let kNetworkID = "NetworkId"
let kNetworkDescription = "NetworkDescription"
let kSaveHistory = "SaveHistory"
let kTermsAccepted = "TermsAccepted"
let kTemporaryNetworkSelection = "TemporaryNetworkSelection"
let kTemporaryDentalNetworkSelection = "TemporaryNetworkSelection"
let kHistorySwitchChanged = "HistorySwitchChanged"
let kCurrentLocationEnabled = "CurrentLocationEnabled"
let kCurrentLocationFound = "CurrentLocationFound"
let kCurrentLocationChangedManually = "CurrentLocationChangedManually"
//#define kSaveNetworkforFuture @"SaveNetworkforFuture"
let kFirstNetworkSelection = "FirstNetworkSelection"
let kFirstDentalNetworkSelection = "FirstDentalNetworkSelection"
let kAcceptingNewPatientsSwitchOn = "AcceptingNewPatientsSwitchOn"
let kSelectedSort = "SelectedSort"
let kSelectedName = "SelectedName"
let kSelectedSearchScreenRadiusIndex = "SelectedSearchScreenRadiusIndex"

//***************************** Doctor Keys **************************************//

let kDoctorFirstName = "DoctorFirstName"
let kDoctorMiddleName = "DoctorMiddleName"
let kDoctorLastName = "DoctorLastName"
let kDoctorSuffix = "DoctorSuffix"
let kDoctorAddress = "DoctorAddress"
let kDoctorState = "DoctorState"
let kDoctorCity = "DoctorCity"
let kDoctorCounty = "DoctorCounty"
let kDoctorDistance = "DoctorDistance"
let kDoctorPhoneNumber = "DoctorPhoneNumber"
let kDoctorProviderID = "DoctorProviderID"
let kDoctorProviderAddressID = "DoctorProviderAddressID"
let kDoctorSpecialities = "DoctorSpecialitiesArray"
let kDoctorZip = "DoctorZip"
let kDoctorAccreditionsArray = "DoctorAccreditionsArray"
let kDoctorCertificationsArray = "DoctorCertificationsArray"
let kDoctorNetworksArray = "DoctorNetworkArray"
let kDoctorLanguagesArray = "DoctorLanguagesArray"
let kDoctorHospitalPrivilegesArray = "DoctorHospitalPrivilegesArray"
let kDoctorGender = "DoctorGender"
let kDoctorCOQKeysArray = "DoctorCOQKeysArray"
let kDOctorCOQValuesArray = "DoctorCOQValuesArray"
let kDoctorAcceptingNewPatients = "DoctorAcceptingNewPatients"
let kDoctorObstetricsKey = "DoctorObstetricsKey"
let kDoctorNCQAarray = "DoctorsNCQAarray"
let kDoctorLongitude = "DoctorLongitude"
let kDoctorLatitude = "DoctorLatitude"
let kaltName = "altName"
let kDoctorNumRatings = "NumRatings"
let kDoctorOverallRatings = "OverallRating"
let kDoctorPercentRecommend = "PercentRecommend"
let kDoctorRating5Partkey = "Rating5PartKey"
let kDoctorRating = "DoctorRating"
let kRecognizeReward = "RecognizeReward"
let kRoles = "Roles"

// Hospital Keys
let kBlueDistBariatricSurgery = "BlueDistBariatricSurgery"
let KBlueDistCardiac = "BlueDistCardiac"
let KBlueDistKneeHipReplace = "BlueDistKneeHipReplace"
let KBlueDistOncology = "BlueDistOncology"
let KBlueDistRareCompCancer = "BlueDistRareCompCancer"
let KBlueDistSpine = "BlueDistSpine"
let KBlueDistTransplant = "BlueDistTransplant"
let KLatitude = "Latitude"
let KLongitude = "Longitude"
let KAddressID = "AddressID"
let kHospSpecialtyRow = "HospitalSpecialityRow"
let kHospSpecialtySection = "HospitalSpecialitySection"
let kHospitalSpecialityIndex = "HospitalSpecialityIndex"
let kHospFilterRadius = "HospitalFilterRadius"
let kAgentFilterRadius = "AgentFilterRadius"
let kHospitalName = "HospitalName"

//************************* Doctor Keys ******************************************//

// Dentist Keys
let kDentistFirstName = "DentistFirstName"
let kDentistMiddleName = "DentistMiddleName"
let kDentistLastName = "DentistLastName"
let kDentistSuffix = "DentistSuffix"
let kDentistAddress = "DentistAddress"
let kDentistState = "DentistState"
let kDentistCity = "DentistCity"
let kDentistCounty = "DentistCounty"
let kDentistDistance = "DentistDistance"
let kDentistPhoneNumber = "DentistPhoneNumber"
let kDentistProviderID = "DentistProviderID"
let kDentistProviderAddressID = "DentistProviderAddressID"
let kDentistSpecialities = "DentistSpecialitiesArray"
let kDentistZip = "DentistZip"
let kDentistAccreditionsArray = "DentistAccreditionsArray"
let kDentistCertificationsArray = "DentistCertificationsArray"
let kDentistNetworksArray = "DentistNetworkArray"
let kDentistLanguagesArray = "DentistLanguagesArray"
let kDentistHospitalPrivilegesArray = "DentistHospitalPrivilegesArray"
let kDentistGender = "DentistGender"
let kDentistCOQKeysArray = "DentistCOQKeysArray"
let kDentistCOQValuesArray = "DentistCOQValuesArray"
let kDentistAcceptingNewPatients = "DentistAcceptingNewPatients"
let kDentistObstetricsKey = "DentistObstetricsKey"
let kDentistNCQAarray = "DentistsNCQAarray"
let kDentistLongitude = "DentistLongitude"
let kDentistLatitude = "DentistLatitude"
let kDentistLocation = "DentistLocation"

//*************** Agent Keys ***************//

let kAgentFirstName = "AgentFirstName"
let kAgentMiddleName = "AgentMiddleName"
let kAgentLastName = "AgentLastName"
let kAgentSuffix = "AgentSuffix"
let kAgentAddress = "AgentAddress"
let kAgentState = "AgentState"
let kAgentCity = "AgentCity"
let kAgentDistance = "AgentDistance"
let kAgentPhoneNumber = "AgentPhoneNumber"
let kAgentBusinessName = "AgentBusinessName"
let kBusinessTypeSold = "BusinessTypeSold"
let kFarmBureauExclusiveAgent = "FarmBureauExclusiveAgent"
let kAgentEmail = "AgentEmail"
let kAgentZip = "AgentZip"
let kAgentID = "AgentID"
let kAgentLongitude = "AgentLongitude"
let kAgentLatitude = "AgentLatitude"

// Doctor OR Hospital

let kHospitalKey = "Hospital"
let kDoctorKey = "Doctor"
let kDentistKey = "Dentist"
let kAgentKey = "Agent"

let kNumberOfItemsInCarousel = "8"
let kNumberOfItemsInCarouselForFindScreen = "4"

let kAcceptingNewPatiensForDentist = "AcceptingNewPatientsForDentist"

let kTitleKeyForMapCallOut = "title"
let kDelegateObjForMapCallout = "DelegateObj"

let kRateLikeReviewService = "reviewlikewsJSON.asmx/Get"
let kRateDislikeReviewsService = "reviewdislikewsJSON.asmx/Get"
let kRateFlagReviewsService = "reviewflagwsJSON.asmx/Get"
let kIsReviewAbleService = "isreviewablews.asmx/Get"

let kGetReviewsService = "getreviewsws"
let kGetQuestionsService = "questiontextws"
let kSubmitReviewsService = "submitreviewwsJSON.asmx/Get"
let kLikeReviewService = "reviewlikews"
let kratingInfoMessage = "Ratings are based on reviews submitted by \nWellmark Blue Cross and Blue Shield members \nthrough myWellmark, our secure member website. \n\nThe overall rating indicates how these members \nrated their overall experience with this doctor on a scale of 1 to 5 stars, with 5 stars indicating the \nhighest level of satisfaction and 1 the lowest. The \npercentage who would recommend reflects the \nmembers who responded \"yes\" when asked if they would recommend this doctor to others.\n\nIndividual ratings show the scores and comments \nof individual members who have rated this \ndoctor.\n\nIf you are a Wellmark member, choose the \"Rate\" \nbutton to submit your own review for this doctor.\n\n\n\n"

let kLocationManagerOnAlert = "Turn on Location Services to Allow Wellmark to Determine Your Location."
let kErrorNetworkAlert = "We’re sorry. This service is temporarily unavailable. Please try again later."

//#define emptyIfNil(x) x ? x : @"empty"
func emptyIfNil(x: NSString?) -> NSString
{
    if (x != nil)
    {
        return x!;
    }
    else
    {
        return "empty"
    }
}

let kNoPreference = "No Preference"
let kNoInternetConnectionError = "No Internet Connection."
let kLocationServiceError = "To enable, please open \"Settings\" and turn on location services for this app."

// #warning need to change for release
// For Production
//let BaseUrl = "http://carefinder-dev.cloudapp.net/"

// For Development
let BaseUrl = "http://carefinder-uat.cloudapp.net/"

let kLearnMoreUrl = "http://www.wellmark.com/HealthAndWellness/ChooseCare/SpecialtyCare.aspx#cancer"
let kItunesUrl = "https://itunes.apple.com/in/app/blue-national-doctor-hospital/id431372558?mt=8"
let kBlueNationalDoctorHospital = "https://itunes.apple.com/us/app/blue-national-doctor-hospital/id431372558?mt=8"
let kNationalAppUrl = "https://itunes.apple.com/us/app/national-provider-finder/id431372558?mt=8"
//#define kwellMarkAppInItunes @"http://itunes.com/apps/Wellmark"
let kwellMarkAppInItunes = "https://itunes.apple.com/us/app/wellmark/id484542399?mt=8"
let kprivacyPolicy = "http://www.wellmark.com/Footer/Privacy.aspx"
let kAllDoctorSpecialityUrl = "carefinder.svc/specialties?institutionflag=1&role=Specialist Provider"
let kOBGYNUrl = "carefinder.svc/specialties?institutionflag=1&role=OB/GYN Care Provider"
let kMentalSpecialtyUrl = "carefinder.svc/specialties?institutionflag=1&role=Mental Health Provider"
let kDentistSpecialityUrl = "carefinder.svc/specialties?institutionflag=5"
let kFacilitySpecialityUrl = "carefinder.svc/specialties?institutionflag=2"
let kEdgeParkUrl = "http://www.edgepark.com/"

// Macros for Submit Review Page
let OFFENDED_MSG_SERVER_PREFIX = "FAILED: Validation Failed on the following term(s): "
let REVIEW_ALREADY_EXIST_MSG_SERVER = "The review already exists"

let OFFENDED_MSG_PREFIX = "Please remove the following words from your rating."
let OFFENDED_MSG_SUFFIX = "Please revise your comments."
let REVIEW_ALREADY_EXIST_MSG = "You have already submitted a rating for this provider.\nYou must wait %@ days after the date of your original rating before submitting another."

enum CNRatingViewType: Int
{
    case CNRatingViewTypeLarge = 10
    case CNRatingViewTypeSmall = 11
    case CNRatingViewTypeMedium = 12
}

enum CNRecommendViewType: Int
{
    case CNRecommendViewTypeLarge = 0
    case CNRecommendViewTypeSmall = 1
}

enum CNRecommendDoctorOptions: Int
{
    case CNRecommendDoctorYes = 0
    case CNRecommendDoctorNo = 1
}

enum CNDoctorReviewQuestionViewType: Int
{
    case CNDoctorReviewQuestionViewTypeRating = 0
    case CNDoctorReviewQuestionViewTypeRecommend
    case CNDoctorReviewQuestionViewTypeComment
}

let LOCATIONSEARCHTEXTMSG = "Searching for your location" //@"Searching..."
let LOCATIONNOTFOUNDMSG = "Unable to determine location"  //@"Unable to detect your location"

let SEPERATORLINETAG = 9999
let BLURVIEWTAG = 1111

// FindAScreenCommon
let TITLETEXTTAG = 2
let DETAILTEXTTAG = 1
let NAMEPLACEHOLDERSTR = "None"

enum StatusType: UInt
{
    case kProcessing
    case kWellmarkPaidYouNotPaid
    case kWellmarkPaidYouPaid
}