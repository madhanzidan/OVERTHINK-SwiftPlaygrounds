//
//  BreathView.swift
//  OVERTHINK
//
//  Created by Zidan Ramadhan on 21/04/22.
//

import Foundation
import SwiftUI

struct BreathView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("LightBlue")
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    HStack {
                        Image("breath")
                            .mainImage()
                            .padding(.horizontal, 40.0)
                        
                        Text("Close your eyes &\ntake a deep breath.")
                            .primaryTitle()
                            .multilineTextAlignment(.leading)
                        
                    }
                    
                    NavigationLink  {
                        ListOverthinkView()
                    } label: {
                        BreathTimer()
                            .padding(.bottom, 25.0)
                        
                    }
                }
            }
            
            
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
        

    }
}

struct BreathView_Previews: PreviewProvider {
    static var previews: some View {
        BreathView()
    }
}


