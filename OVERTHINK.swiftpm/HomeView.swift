//
//  HomeView.swift
//  OVERTHINK
//
//  Created by Zidan Ramadhan on 20/04/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("LightBlue")
                    .ignoresSafeArea()
                VStack(spacing: 20) {
                    Image("AppLogo")
                        .mainImage()
                    
                    Text("Let's get rid of your overthinking.")
                        .secondaryTitle()
                        .offset(y: -175)
                    
                    NavigationLink {
                        BreathView()
                    } label: {
                        PrimaryButton(text: "Start")
                            .offset(y: -50)
                    }
                }
                
            }
            .onAppear(perform: {
                playSound(audioName: "JesuJoyOfMan'sDesiring")
            })
        }
        .navigationViewStyle(.stack)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

