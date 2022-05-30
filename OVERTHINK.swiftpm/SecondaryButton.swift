//
//  File.swift
//  OVERTHINK
//
//  Created by Zidan Ramadhan on 24/04/22.
//

import SwiftUI
import Combine

struct SecondaryButton: View {
    var text: String
    var background: Color = Color("AccentColor")
    var body: some View {
        Text(text)
            .bold()
            .font(.system(size: 20))
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .frame(width: 150, height: 50)
            .background(Color("LightBrown"))
            .foregroundColor(Color("Pink"))
            .cornerRadius(18)
        
    }
}

struct SecondaryButton_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryButton(text: "Test")
    }
}

