//
//  TextStyles.swift
//  Onboard
//
//  Created by Nazish Ali on 06/02/22.
//

import Foundation
import SwiftUI


struct TitleStyles: ViewModifier {
   
    var fontName: String
    var fontSize: CGFloat
   
    func body(content: Content) -> some View {
        content.font(.custom(self.fontName, size: self.fontSize))
    }
    
}




struct FontName {
    static let bold = "AvenirNext-Bold"
    static let regular = "AvenirNext-Regular"
}

struct FontSize {
    static let large: CGFloat = 18
    static let small: CGFloat = 13
    static let medium: CGFloat = 15
}

struct COLOR {
    static let buttonBackgroundColor = Color(UIColor(red: 36/255, green: 160/255, blue: 237/255, alpha: 1))
    static let borderColor = Color(UIColor(red: 36/255, green: 160/255, blue: 237/255, alpha: 1))
}
