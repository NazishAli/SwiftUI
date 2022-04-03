//
//  Constant.swift
//  Onboard
//
//  Created by Nazish Ali on 29/01/22.
//

import Foundation


//struct Color {
//    static let textColor = Color()
//}


class StringConstant {
    
    static let share = StringConstant()
    
    private init() {
        
    }
    let bio_data_maker = "Marriage Biodata Maker"
    let cick_to_make_biodata = "CLICK TO MAKE BIODATA"
    let personal_Details = "Personal Details"
    let family_background_Details = "Family Background Details"
    let full_name = "Full Name"
    let name = "Name"
    let religion = "Religion"
    let caste = "Caste"
    let dob = "Date Of Birth"
    let age = "Age"
    let height = "Height"
    let selectHeight = "Select Height"
    let bloodGroup = "Blood Group"
    let complexion = "Complexion"
    let personalContactNumber = "Personal Contact Number"
    let email = "Email"
    let hobbies = "Hobbies"
    let next = "NEXT"
    let horoscopeDetail = "Horoscope Details"
    let addressDetail = "Address Details"
    let timeOfBirth = "Time of Birth"
    let placeOfBirth = "Place of Birth"
    let mangal = "Mangal"
    let kuldevekGotra = "Kuldevek / Gotra"
    let educationOccupation = "Education And Occupation Details"
    let educationDetails = "Education Details"
    let educationDetails2 = "Education Details 2"
    let educationDetails3 = "Education Details 3"
    let occupationDetails = "Occupation Details"
    let incomeDetails = "Income Details (per annum)"
   
    let grandFatherName = "Grand Father Name"
    let grandMotherName = "Grand Mother Name"
    let fatherName = "Fathers Name"
    let fatherOccupation = "Fathers Occupation"
    let motherName = "Mothers Name"
    let motherOccupation = "Mothers Occupation"
    let noOfSiblings = "No of Siblings (Brother and Sister)"
    let siblingsDetails = "Sibling Details (Brothers)"
    let siblingsDetailsSis = "Sibling Details (Sisters)"
    let paternalUncleDetails = "Paternal Uncle/Aunt Details"
    let maternalUncleDetails = "Maternal Uncle/Aunt Details"
    let parentContactNumber = "Parent Contact Number"
    let partnerExpectations = "Partner Expectations"
    let ResidentialAddress = "Residential Address"
    let profileImage = "Profile Image"
    let writeAnyThingOnTopOfBioData = "Write anything on top of your Biodata"
    let chooseColor = "Choose Color (Any One)"
    let black = "Black"
    let brownRed = "Brown Red"
    let loadPicture = "LOAD PICTURE"
    let preview = "Preview"
}


enum Flavor: String, CaseIterable, Identifiable {
    case chocolate, vanilla, strawberry
    var id: Self { self }
}

enum Complexian: String, CaseIterable, Identifiable {
    case varyfair = "Very Fair"
    case fair = "Fair"
    case medium = "Medium"
    case wheatish = "Wheatish"
    case dark = "Dark"
    
    var id: Self { self }
}


enum Height: String, CaseIterable, Identifiable {
    case fourftOneInc = "4ft 1inch"
    case fourftTwoInc = "4ft 2inch"
    case fourftThreeInc = "4ft 3inch"
    case fourftFourInc = "4ft 4inch"
    case fourftFiveInc = "4ft 5inch"
    case fourftSixInc = "4ft 6inch"
    case fourftSevenInc = "4ft 7inch"
    case fourftEightInc = "4ft 8inch"
    case fourftNineInc = "4ft 9inch"
    case fourftTenInc = "4ft 10inch"
    case fourftElevenInc = "4ft 11inch"
    case fiveft = "5ft"
    case fiveftOneInc = "5ft 1inch"
    case fiveftTwoInc = "5ft 2inch"
    case fiveftThreeInc = "5ft 3inch"
    case fiveftFourInc = "5ft 4inch"
    case fiveftFiveInc = "5ft 5inch"
    case fiveftSixInc = "5ft 6inch"
    case fiveftSevenInc = "5ft 7inch"
    case fiveftEightInc = "5ft 8inch"
    case fiveftNineInc = "5ft 9inch"
    case fiveftTenInc = "5ft 10inch"
    case fiveftElevenInc = "5ft 11inch"
    case sixft = "6ft"
    case sixftOneInc = "6ft 1inch"
    case sixftTwoInc = "6ft 2inch"
    case sixftThreeInc = "6ft 3inch"
    case sixftFourInc = "6ft 4inch"
    case sixftFiveInc = "6ft 5inch"
    case sixftSixInc = "6ft 6inch"
    case sixftSevenInc = "6ft 7inch"
    case sixftEightInc = "6ft 8inch"
    case sixftNineInc = "6ft 9inch"
    case sixftTenInc = "6ft 10inch"
    case sixftElevenInc = "6ft 11inch"
    
    var id: Self { self }
}

enum BloodGroup: String, CaseIterable, Identifiable {
   case apositive = "A+"
   case anegative = "A-"
   case bpositive = "B+"
   case bnegative = "B-"
   case abpositive = "AB+"
   case abnegative = "AB-"
   case opositive = "O+"
   case onegative = "O-"
    
    var id: Self { self }
}


enum Mangal: String, CaseIterable, Identifiable {
    case no = "No"
    case yes = "Yes"
    var id: Self { self }
}


