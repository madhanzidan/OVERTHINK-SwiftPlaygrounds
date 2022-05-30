//
//  Button.swift
//  OVERTHINK
//
//  Created by Zidan Ramadhan on 21/04/22.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color("AccentColor")
    var body: some View {
        Text(text)
            .bold()
            .font(.system(size: 40))
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .frame(width: 300, height: 100)
            .background(Color("LightBrown"))
            .foregroundColor(Color("Pink"))
            .cornerRadius(30)
        
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Test")
    }
}
