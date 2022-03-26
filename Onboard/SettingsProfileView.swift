//
//  SettingsProfileView.swift
//  Onboard
//
//  Created by Nazish Ali on 26/03/22.
//

import SwiftUI

struct SettingsProfileView: View {
    @ObservedObject var viewModel: PersonalDetailViewModel
  
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading, spacing: 10) {
                
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                    Image("profileImageDefault")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .aspectRatio(contentMode: .fill)
                    
                    Button {
                        print("Load picture clicked")
                    } label: {
                        Text(StringConstant.share.loadPicture)
                            .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                            .foregroundColor(Color("CustomTextColor"))
                    }
                  }

                }
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.writeAnyThingOnTopOfBioData)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextField("", text: $viewModel.model.bioDataText) { (isChange) in
                        print(isChange)
                    } onCommit: {
                        print("Commit value")
                    }.textFieldStyle(BorderCustomTextFieldStyle(isError: false))
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.chooseColor)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    
                    Button {
                        print("Button Clicked")
                        self.viewModel.isBlack = true
                        self.viewModel.isBrown = false
                    } label: {
                        HStack {
                            Image(viewModel.isBlack ? "checkboxClicked" : "checkbox")
                            Text(StringConstant.share.black)
                                .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                                .foregroundColor(Color("CustomTextColor"))
                        }
                    }
                    
                    Button {
                        print("Button Clicked")
                        self.viewModel.isBlack = false
                        self.viewModel.isBrown = true
                    } label: {
                        HStack {
                            Image(viewModel.isBrown ? "checkboxClicked" : "checkbox")
                            Text(StringConstant.share.brownRed)
                                .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                                .foregroundColor(Color.black)
                        }
                    }
                    

                }
                
                NavigationLink(destination: PdfShowingView(), isActive: $viewModel.isPreview) {
                    ButtonView(title: StringConstant.share.preview, textColor: .white, publisher:  viewModel.previewPublisher)
                }.background(COLOR.buttonBackgroundColor)
            }
            .padding([.leading, .trailing], 20)
            .padding([.top], 20)
           
        }
        .navigationBarTitle(StringConstant.share.profileImage)
       
    }
}

struct SettingsProfileView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsProfileView(viewModel: PersonalDetailViewModel())
    }
}
