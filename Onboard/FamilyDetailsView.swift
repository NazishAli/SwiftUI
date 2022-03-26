//
//  FamilyDetailsView.swift
//  Onboard
//
//  Created by Nazish Ali on 24/03/22.
//

import SwiftUI

struct FamilyDetailsView: View {
    
    @ObservedObject var viewModel: PersonalDetailViewModel
   
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading, spacing: 10) {
               
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.grandFatherName)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.grandFatherName, text: $viewModel.model.grandFatherName) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.grandMotherName)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.grandMotherName, text: $viewModel.model.grandMotherName) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.fatherName)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.fatherName, text: $viewModel.model.fatherName) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.fatherOccupation)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.fatherOccupation, text: $viewModel.model.fatherOccupation) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.motherName)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.motherName, text: $viewModel.model.motherName) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.motherOccupation)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.motherOccupation, text: $viewModel.model.motherOccupation) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.noOfSiblings)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.noOfSiblings, text: $viewModel.model.noOfSiblings) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.siblingsDetails)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextEditor(text: $viewModel.model.siblingsDetails)
                                   .foregroundColor(Color("CustomTextColor"))
                                  // .padding(.horizontal)
                                   .border(COLOR.borderColor, width: 1.0)
                        .frame(height: 110)
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.siblingsDetailsSis)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextEditor(text: $viewModel.model.siblingsDetailsSis)
                                   .foregroundColor(Color("CustomTextColor"))
                                  // .padding(.horizontal)
                                   .border(COLOR.borderColor, width: 1.0)
                        .frame(height: 110)
                }
                
                bottomView
                
                
                
               
               
                
            }.padding([.leading, .trailing], 20)
            .padding([.top], 20)
            
            .navigationBarTitle(StringConstant.share.family_background_Details)
        }
    }
    
    
    var bottomView: some View {
        Group {
            VStack(alignment: .leading, spacing: 5) {
                Text(StringConstant.share.paternalUncleDetails)
                    .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                TextEditor(text: $viewModel.model.paternalUncleDetails)
                               .foregroundColor(Color("CustomTextColor"))
                              // .padding(.horizontal)
                               .border(COLOR.borderColor, width: 1.0)
                    .frame(height: 110)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(StringConstant.share.maternalUncleDetails)
                    .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                TextEditor(text: $viewModel.model.maternalUncleDetails)
                               .foregroundColor(Color("CustomTextColor"))
                              // .padding(.horizontal)
                               .border(COLOR.borderColor, width: 1.0)
                    .frame(height: 110)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(StringConstant.share.parentContactNumber)
                    .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                TextField(StringConstant.share.parentContactNumber, text: $viewModel.model.parentContactNumber) { (isChange) in
                    print(isChange)
                } onCommit: {
                    print("Commit value")
                }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(StringConstant.share.partnerExpectations)
                    .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                TextField(StringConstant.share.partnerExpectations, text: $viewModel.model.partnerExpectations) { (isChange) in
                    print(isChange)
                } onCommit: {
                    print("Commit value")
                }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                
            }
            
            NavigationLink(destination: AddressDetailsView(viewModel: viewModel), isActive: $viewModel.isFamilyNext) {
                ButtonView(title: StringConstant.share.next, textColor: .white, publisher:  viewModel.familyPublisher)
            }.background(COLOR.buttonBackgroundColor)
        }
    }
}

struct FamilyDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FamilyDetailsView(viewModel: PersonalDetailViewModel())
    }
}
