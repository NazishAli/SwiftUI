//
//  HomeScreenView.swift
//  Onboard
//
//  Created by Nazish Ali on 04/02/22.
//

import SwiftUI
import Combine


class HomeModel: ObservableObject {
    @Published var isClicked: Bool = false
    var publisher = PassthroughSubject<String, Never>()
    var subscription = Set<AnyCancellable>()
    
    init() {
        publisher.sink {  (_) in
            print("Button Preseed")
//            let fontFamily = UIFont.familyNames
//            for font in fontFamily {
//                print(UIFont.fontNames(forFamilyName: font))
//            }
         //   print(fontFamily)
            self.bioDataClicked()
            
        }.store(in: &subscription)
    }
    
    func bioDataClicked() {
        self.isClicked = true
    }
}

struct HomeScreenView: View {
    @StateObject var model = HomeModel()
    
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor(COLOR.buttonBackgroundColor)
        coloredAppearance.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font : UIFont(name: FontName.bold, size: FontSize.large)!]
        coloredAppearance.largeTitleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font : UIFont(name: FontName.bold, size: FontSize.large)!]
       
            UINavigationBar.appearance().standardAppearance = coloredAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
            UINavigationBar.appearance().compactAppearance = coloredAppearance
            UINavigationBar.appearance().tintColor = UIColor.white
    
    }
  
   
    var body: some View {
        NavigationView {
            NavigationLink(destination: PersonalDetailsView(), isActive: $model.isClicked) {
                ButtonView(title: StringConstant.share.cick_to_make_biodata, textColor: .white, publisher:  model.publisher)
            }
              .background(COLOR.buttonBackgroundColor)
              .padding([.leading, .trailing], 30)
              .navigationTitle(StringConstant.share.bio_data_maker)
              .navigationBarTitleDisplayMode(.inline)
       }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
