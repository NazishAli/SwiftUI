//
//  PdfShowingView.swift
//  Onboard
//
//  Created by Nazish Ali on 04/03/22.
//

import SwiftUI

struct PdfShowingView: View {
    var body: some View {
        VStack {
            WebView(url: getUrl())
        }
    }
    
    func getUrl() -> URL {
       return PersonalDetailViewModel.getDocumentsDirectory().appendingPathComponent("myCoolPDF.pdf")
    }
}

struct PdfShowingView_Previews: PreviewProvider {
    static var previews: some View {
        PdfShowingView()
    }
}
