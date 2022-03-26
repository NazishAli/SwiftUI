//
//  HoroscopeDetailsView.swift
//  Onboard
//
//  Created by Nazish Ali on 04/03/22.
//

import SwiftUI

struct HoroscopeDetailsView: View {
    @ObservedObject var viewModel: PersonalDetailViewModel
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading, spacing: 10) {
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.timeOfBirth)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.timeOfBirth, text: $viewModel.model.dateOfBirth) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.placeOfBirth)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.placeOfBirth, text: $viewModel.model.placeOfBirth) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                VStack (alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.mangal)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    HStack {
                        Picker(selection:  $viewModel.model.mangalType, label: Text(viewModel.model.mangalType.rawValue) .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium)).frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 50)) {
                            ForEach(Mangal.allCases) { mangal in
                                Text(mangal.rawValue)
                            }
                        } .pickerStyle(MenuPickerStyle())
                        
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .border(COLOR.borderColor, width: 1.0)
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.kuldevekGotra)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField(StringConstant.share.kuldevekGotra, text: $viewModel.model.kuldevekGotra) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                    
                }
                
                NavigationLink(destination: EducationalDetailView(viewModel: viewModel), isActive: $viewModel.isHoroscopeNext) {
                    ButtonView(title: StringConstant.share.next, textColor: .white, publisher:  viewModel.horoscopePublisher)
                }.background(COLOR.buttonBackgroundColor)
                
            }
            .padding([.leading, .trailing], 20)
            .padding([.top], 20)
           
        }
        .navigationBarTitle(StringConstant.share.horoscopeDetail)
      
    }
}

struct HoroscopeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        HoroscopeDetailsView(viewModel: PersonalDetailViewModel())
    }
}
