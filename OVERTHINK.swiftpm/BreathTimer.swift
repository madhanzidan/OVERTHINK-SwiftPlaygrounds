//
//  ProgressBar.swift
//  OVERTHINK
//
//  Created by Zidan Ramadhan on 22/04/22.
//

import SwiftUI

struct BreathTimer: View {
    
    @State var start = false
    @State var to : CGFloat = 0
    @State var count = 0
    @State var time = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let totalTime : Int = 20
    
    var body: some View {
        
        VStack {
            ZStack{
                if count < totalTime {
                    Circle()
                        .trim(from: 0, to: 1)
                        .stroke(Color.black.opacity(0.09), style: StrokeStyle(lineWidth: 15, lineCap: .round))
                        .frame(width: 180, height: 180)
                    
                    Circle()
                        .trim(from: 0, to: self.to)
                        .stroke(Color("LightBrown"), style: StrokeStyle(lineWidth: 20, lineCap: .round))
                        .frame(width: 180, height: 180)
                        .rotationEffect(.init(degrees: -90))
                    
                    
                    Text("\(self.count)")
                        .font(.system(size: 65))
                        .fontWeight(.bold)
                        .foregroundColor(Color("LightBrown"))
                } else {
                    PrimaryButton(text: "Next")
                }
                
            }
            .onAppear() {
                self.start.toggle()
            }
            .onReceive(self.time) { (_) in
                if self.start {
                    if self.count < totalTime {
                        self.count += 1
                        withAnimation(.default) {
                            self.to = CGFloat(self.count) / CGFloat(totalTime)
                        }
                    } else {
                        //self.start.toggle()
                    }
                }
            }
        }
        
        
    }
}

struct BreathTimer_Previews: PreviewProvider {
    static var previews: some View {
        BreathTimer()
    }
}
