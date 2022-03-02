//
//  BorderCustomTextFieldStyle.swift
//  Onboard
//
//  Created by Nazish Ali on 29/01/22.
//

import Foundation
import SwiftUI


struct BorderCustomTextFieldStyle: TextFieldStyle {
  //  typealias _Body = <#type#>
    
    var isError: Bool
    
    var borderColor: Color {
        return isError ? Color.red : COLOR.borderColor
    }
   
   
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .foregroundColor(Color("CustomTextColor"))
            .padding()
            .background(RoundedRectangle(cornerRadius: 5.0).fill(Color.white))
            .cornerRadius(10.0)
            .border(borderColor, width: 1.0)
            
            
    }
    
}
