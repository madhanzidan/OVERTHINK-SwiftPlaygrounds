//
//  Extensions.swift
//  OVERTHINK
//
//  Created by Zidan Ramadhan on 21/04/22.
//

import Foundation
import SwiftUI

extension Text {
    func secondaryTitle() -> some View {
        self.font(.system(size: 30))
            .fontWeight(.heavy)
            .foregroundColor(Color("LightPink"))
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    func secondaryPinkTitle() -> some View {
        self.font(.system(size: 28))
            .fontWeight(.heavy)
            .foregroundColor(Color("Pink"))
            .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
    }
    func secondaryLightBrownTitle() -> some View {
        self.font(.system(size: 28))
            .fontWeight(.heavy)
            .foregroundColor(Color("LightBrown"))
            .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
    }
    func primaryTitle() -> some View {
        self.font(.system(size: 50))
            .fontWeight(.heavy)
            .foregroundColor(Color("LightPink"))
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    func primaryBlueTitle() -> some View {
        self.font(.system(size: 50))
            .fontWeight(.heavy)
            .foregroundColor(Color("LightBlue"))
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    func primaryBlueBigTitle() -> some View {
        self.font(.system(size: 70))
            .fontWeight(.heavy)
            .foregroundColor(Color("LightBlue"))
            .padding(/*@START_MENU_TOKEN@*/[.top, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
    }
}

extension Image {
    func mainImage() -> some View {
        self.resizable()
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .scaledToFit()
        
    }
}


