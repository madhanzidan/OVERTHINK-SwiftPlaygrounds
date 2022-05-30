//
//  MindfulnessView.swift
//  OVERTHINK
//
//  Created by Zidan Ramadhan on 24/04/22.
//

import SwiftUI

struct MindfulnessView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("LightBrown")
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        VStack (spacing: 3) {
                            Text("Mindfulness\nSession")
                                .primaryBlueBigTitle()
                                .frame(width: 450, height: 200 )
                            Text("Take the time to rewire your mind\n(1) Get the most comfortable position\n(2) Close your eyes and feel your deep breath\n(3) Center your thoughts")
                                .secondaryPinkTitle()
                                .frame(width: 700, height: 200)
                                .offset(x: 73)
                        }
                        Image("candle")
                            .resizable()
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .scaledToFit()
                            .frame(width: 500, height: 500)
                    }
                    NavigationLink {
                        FinishView()
                    } label: {
                        Text("Finish")
                            .bold()
                            .font(.system(size: 40))
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 200, height: 80)
                            .background(Color("LightBlue"))
                            .foregroundColor(Color("Pink"))
                            .cornerRadius(30)
                    }
                    
                }
            }
            .onAppear(perform: {
                playSound(audioName: "ClaireDeLune")
            })
        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
    }
}

struct MindfulnessView_Previews: PreviewProvider {
    static var previews: some View {
        MindfulnessView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
