//
//  EducationalDetailView.swift
//  Onboard
//
//  Created by Nazish Ali on 21/03/22.
//

import SwiftUI




struct EducationalDetailView: View {
    @ObservedObject var viewModel: PersonalDetailViewModel
   
   
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading, spacing: 10) {
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.educationDetails)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextEditor(text: $viewModel.model.educationDetails)
                                   .foregroundColor(Color("CustomTextColor"))
                                  // .padding(.horizontal)
                                   .border(COLOR.borderColor, width: 1.0)
                        .frame(height: 110)
//                        .toolbar {
//                            ToolbarItemGroup(placement: ToolbarItemPlacement.navigation) {
//                                Spacer()
//                                            Button("Done") {
//                                                print("Clicked")
//                                            }
//                                        }
//                     }
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.educationDetails2)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextEditor(text: $viewModel.model.educationDetails2)
                                   .foregroundColor(Color("CustomTextColor"))
                                  // .padding(.horizontal)
                                   .border(COLOR.borderColor, width: 1.0)
                        .frame(height: 110)
                }
                
                VStack (alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.educationDetails3)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextEditor(text: $viewModel.model.educationDetails3)
                                   .foregroundColor(Color("CustomTextColor"))
                                  // .padding(.horizontal)
                                   .border(COLOR.borderColor, width: 1.0)
                        .frame(height: 110)
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.occupationDetails)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextEditor(text: $viewModel.model.occupationDetails)
                                   .foregroundColor(Color("CustomTextColor"))
                                  // .padding(.horizontal)
                                   .border(COLOR.borderColor, width: 1.0)
                        .frame(height: 110)
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.incomeDetails)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.incomeDetails, text: $viewModel.model.income) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                NavigationLink(destination: FamilyDetailsView(viewModel: viewModel), isActive: $viewModel.isEducationNext) {
                    ButtonView(title: StringConstant.share.next, textColor: .white, publisher:  viewModel.educationPublisher)
                }.background(COLOR.buttonBackgroundColor)
                
            }
            .padding([.leading, .trailing], 20)
            .padding([.top], 20)
        }
        .navigationBarTitle(StringConstant.share.educationOccupation)
    }
}

struct EducationalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EducationalDetailView(viewModel: PersonalDetailViewModel())
    }
}

