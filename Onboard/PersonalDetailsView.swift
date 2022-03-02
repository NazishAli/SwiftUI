//
//  PersonalDetailsView.swift
//  Onboard
//
//  Created by Nazish Ali on 11/02/22.
//

import SwiftUI

class PersonalDetailViewModel: ObservableObject {
    @Published var model = PersonalDetail()
    
    
}


class PersonalDetail {
    var fullName = ""
    var religion = ""
    var caste = ""
    var dob = ""
    var age = ""
    var selectedHeight: Height = .fiveft
    var selectedBloodGroup: BloodGroup = .bpositive
    var complexian: Complexian = .varyfair
    var contactNumber = ""
    var email = ""
    
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

struct PersonalDetailsView: View {
    
    @StateObject var viewModel = PersonalDetailViewModel()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading, spacing: 10) {
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.full_name)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.full_name, text: $viewModel.model.fullName) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.religion)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.religion, text: $viewModel.model.religion) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.religion)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.religion, text: $viewModel.model.caste) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.dob)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.dob, text: $viewModel.model.dob) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.age)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.age, text: $viewModel.model.age) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                VStack (alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.height)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    HStack {
                        Picker(selection:  $viewModel.model.selectedHeight, label: Text(viewModel.model.selectedHeight.rawValue) .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium)).frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 50)) {
                            ForEach(Height.allCases) { height in
                                Text(height.rawValue)
                            }
                        } .pickerStyle(MenuPickerStyle())
                        
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .border(COLOR.borderColor, width: 1.0)
                }
                
                VStack (alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.bloodGroup)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    HStack {
                        Picker(selection:  $viewModel.model.selectedBloodGroup, label: Text(viewModel.model.selectedBloodGroup.rawValue) .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium)).frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 50)) {
                            ForEach(BloodGroup.allCases) { group in
                                Text(group.rawValue)
                            }
                        } .pickerStyle(MenuPickerStyle())
                        
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .border(COLOR.borderColor, width: 1.0)
                }
                
                VStack (alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.complexion)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    HStack {
                        Picker(selection:  $viewModel.model.complexian, label: Text(viewModel.model.complexian.rawValue) .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium)).frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 50)) {
                            ForEach(Complexian.allCases) { comp in
                                Text(comp.rawValue)
                            }
                        } .pickerStyle(MenuPickerStyle())
                        
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .border(COLOR.borderColor, width: 1.0)
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.personalContactNumber)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.personalContactNumber, text: $viewModel.model.contactNumber) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    .keyboardType(.phonePad)
                   
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.email)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.email, text: $viewModel.model.email) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    .keyboardType(.emailAddress)
                    
                   
                    
                }
            }.padding([.leading, .trailing], 20)
            .padding([.top], 20)
            
            .navigationBarTitle(StringConstant.share.personal_Details)
        }
    }
}

struct PersonalDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDetailsView()
    }
}



extension View {
    
    func hidden(_ shouldHide: Bool) -> Bool {
        return shouldHide ? true : false
    }
}
