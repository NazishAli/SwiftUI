//
//  ButtonView.swift
//  Onboard
//
//  Created by Nazish Ali on 10/01/22.
//

import SwiftUI
import Combine

struct ButtonView: View {
    var title: String
    var textColor: Color
    var publisher: PassthroughSubject<String, Never>
    
    var body: some View {
        Button {
            publisher.send("Button Clicked")
        } label: {
            Text(title)
                .modifier(TitleStyles(fontName: FontName.bold, fontSize: FontSize.medium))
                .foregroundColor(textColor)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 50)
        }

    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Sign In", textColor: .white, publisher: PassthroughSubject<String, Never>())
    }
}
