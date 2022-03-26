//
//  PersonalDetailsView.swift
//  Onboard
//
//  Created by Nazish Ali on 11/02/22.
//

import SwiftUI
import Combine

class PersonalDetailViewModel: ObservableObject {
    @Published var model = PersonalDetail()
    @Published var isNext = false
    @Published var isHoroscopeNext = false
    @Published var isEducationNext = false
    @Published var isFamilyNext = false
    @Published var isAddressNext = false
    @Published var isPreview = false
    @Published var isBlack = false
    @Published var isBrown = false
    
    
    var publisher = PassthroughSubject<String, Never>()
    var horoscopePublisher = PassthroughSubject<String, Never>()
    var educationPublisher = PassthroughSubject<String, Never>()
    var familyPublisher = PassthroughSubject<String, Never>()
    var addressPublisher = PassthroughSubject<String, Never>()
    var previewPublisher = PassthroughSubject<String, Never>()
    var subscription = Set<AnyCancellable>()
    
    init() {
        publisher.sink {  (_) in
            print("Button Preseed")
//            let fontFamily = UIFont.familyNames
//            for font in fontFamily {
//                print(UIFont.fontNames(forFamilyName: font))
//            }
         //   print(fontFamily)
         
          self.isNext = true
         UIApplication.shared.endEditing()
        }.store(in: &subscription)
        
        horoscopePublisher.sink {  (_) in
            print("Button Preseed")
          self.isHoroscopeNext = true
        }.store(in: &subscription)
        
        educationPublisher.sink {  (_) in
            print("Button Preseed")
          self.isEducationNext = true
        }.store(in: &subscription)
        
        familyPublisher.sink {  (_) in
            print("Button Preseed")
          self.isFamilyNext = true
        }.store(in: &subscription)
        
        addressPublisher.sink {  (_) in
            print("Button Preseed")
          self.isAddressNext = true
        }.store(in: &subscription)
        
        previewPublisher.sink {  (_) in
            print("Button Preseed")
          self.isPreview = true
        }.store(in: &subscription)
    }
    
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
    var hobbies = ""
    var dateOfBirth = ""
    var placeOfBirth = ""
    var mangalType: Mangal = Mangal.no
    var kuldevekGotra = ""
    var educationDetails = ""
    var educationDetails2 = ""
    var educationDetails3 = ""
    var occupationDetails = ""
    var income = ""
    var grandFatherName = ""
    var grandMotherName = ""
    var fatherName = ""
    var fatherOccupation = ""
    var motherName = ""
    var motherOccupation = ""
    var noOfSiblings = ""
    var siblingsDetails = ""
    var siblingsDetailsSis = ""
    var paternalUncleDetails = ""
    var maternalUncleDetails = ""
    var parentContactNumber = ""
    var partnerExpectations = ""
    var residentialAddress = ""
    var bioDataText = ""
    
}

struct PersonalDetailsView: View {
    
    @StateObject var viewModel = PersonalDetailViewModel()
    @State private var textStyle = UIFont.TextStyle.body
    
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
                
                bottomView
                
            }.padding([.leading, .trailing], 20)
            .padding([.top], 20)
            
            .navigationBarTitle(StringConstant.share.personal_Details)
        }
    }
   
    
    var bottomView: some View {
        Group {
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
            
//            VStack(alignment: .leading, spacing: 5) {
//                Text(StringConstant.share.hobbies)
//                    .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
//                TextField(StringConstant.share.hobbies, text: $viewModel.model.hobbies) { (isChange) in
//                    print(isChange)
//                } onCommit: {
//                    print("Commit value")
//                }.frame(height: 120)
//                .padding()
//                .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white))
//                .cornerRadius(10.0)
//                .border( COLOR.borderColor, width: 1.0)
//
//                //.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
//
//
//            }
            VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.hobbies)
                    .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
//                TextView(text: $viewModel.model.hobbies, textStyle: $textStyle)
//                    .frame(height: 100)
//                    .padding()
//                    .border( COLOR.borderColor, width: 1.0)
               
                TextField(StringConstant.share.hobbies, text: $viewModel.model.hobbies) { (isChange) in
                    print(isChange)
                } onCommit: {
                    print("Commit value")
                }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
            }
            
            NavigationLink(destination: HoroscopeDetailsView(viewModel: viewModel), isActive: $viewModel.isNext) {
                ButtonView(title: StringConstant.share.next, textColor: .white, publisher:  viewModel.publisher)
            }.background(COLOR.buttonBackgroundColor)
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
