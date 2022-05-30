//
//  FinishView.swift
//  OVERTHINK
//
//  Created by Zidan Ramadhan on 25/04/22.
//

import SwiftUI

struct FinishView: View {
    var body: some View {
        
        ZStack {
            ZStack {
                Color("LightBrown")
                    .ignoresSafeArea()
                VStack {
                    Image("love")
                        .mainImage()
                        .frame(width: 200, height: 200)
                    Text("Hello there. You're amazing. Thanks to you because you can be here, right now, with this power. It's not the end, it's just the process. This challenge will elevate you to become a more wonderful person. After this, you'll become stronger than ever. Believe in yourself, because you're amazing.")
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
                        .foregroundColor(Color("LightBlue"))
                        .padding(.all)
                        .multilineTextAlignment(.center)
                        .frame(width: 800, height: 300)
                        .offset(y: -40)
                }
            }
            
        }
        .navigationBarHidden(true)
    }
}

struct FinishView_Previews: PreviewProvider {
    static var previews: some View {
        FinishView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
