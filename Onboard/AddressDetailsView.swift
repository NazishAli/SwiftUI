//
//  AddressDetailsView.swift
//  Onboard
//
//  Created by Nazish Ali on 24/03/22.
//

import SwiftUI

struct AddressDetailsView: View {
    @ObservedObject var viewModel: PersonalDetailViewModel
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading, spacing: 5) {
                    Text(StringConstant.share.ResidentialAddress)
                        .modifier(TitleStyles(fontName: FontName.regular, fontSize: FontSize.medium))
                    TextEditor(text: $viewModel.model.residentialAddress)
                                   .foregroundColor(Color("CustomTextColor"))
                                  // .padding(.horizontal)
                                   .border(COLOR.borderColor, width: 1.0)
                        .frame(height: 110)
                }
                
                NavigationLink(destination: SettingsProfileView(viewModel: viewModel), isActive: $viewModel.isAddressNext) {
                    ButtonView(title: StringConstant.share.next, textColor: .white, publisher:  viewModel.addressPublisher)
                }.background(COLOR.buttonBackgroundColor)
            }
            .padding([.leading, .trailing], 20)
            .padding([.top], 20)
           
        }
        .navigationBarTitle(StringConstant.share.addressDetail)
       
    }
}

struct AddressDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        AddressDetailsView(viewModel: PersonalDetailViewModel())
    }
}
