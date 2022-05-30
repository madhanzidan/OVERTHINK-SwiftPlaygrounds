//
//  ListOverthinkView.swift
//  OVERTHINK
//
//  Created by Zidan Ramadhan on 22/04/22.
//

import SwiftUI
import Combine

struct ListOverthinkView: View {

    @ObservedObject var thinkStore = ThinkStore()
    @State var newThink: String = ""
    
    var inputBar: some View {
        HStack {
            TextField("Enter your overthink here..", text: $newThink)
                .textFieldStyle(.roundedBorder)
                .cornerRadius(15)
                .frame(width: 500, height: 50)
                .submitLabel(.done)
                .onSubmit {
                    addNewThink()
                }
            Button(action: addNewThink, label: {
                Text("Add")
                    .bold()
                    .font(.system(size: 20))
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: 150, height: 36)
                    .background(Color("LightPink"))
                    .foregroundColor(Color("Pink"))
                    .cornerRadius(15)
            })
        }
    }
    
    func addNewThink() {
        thinkStore.thinks.append(Think(id: String(thinkStore.thinks.count + 1), thinkItem: newThink))
        self.newThink = ""
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("LightBlue").ignoresSafeArea()
                VStack {
                    HStack {
                        Image("list")
                            .mainImage()
                        VStack {
                            Text("Write down your overthinks.")
                                .primaryTitle()
                            Text("Pour all your overthinks to release your stress")
                                .secondaryTitle()
                        }
                    }
                    HStack (spacing: 5) {
                        inputBar.padding()
                        Divider()
                            .frame(width: 10, height: 40.0)
                            .offset(x: -7)
                        
                        NavigationLink(destination: MindfulnessView()) {
                            Text("Finish")
                                .bold()
                                .font(.system(size: 20))
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                .frame(width: 150, height: 36)
                                .background(Color("LightBrown"))
                                .foregroundColor(Color("Pink"))
                                .cornerRadius(15)
                        }
                        

                    }
                    .padding(.horizontal, 10.0)

                    
                    
                    List {
                        ForEach(thinkStore.thinks) { task in
                            Text(task.thinkItem)
                                .bold()
                                .listRowBackground(Color("LightPink"))
                                .foregroundColor(Color("Pink"))
                                
                        }
                        .onMove(perform: self.move)
                        .onDelete(perform: self.delete)
                    }
                    
                    .navigationBarItems(trailing:EditButton()
                        .foregroundColor(Color("LightBrown"))
                        .font(.system(size: 25).bold())
                                        
                    )
                    
                }
                
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
        
        
    }
    
    func move(from source: IndexSet, to destination: Int) {
        thinkStore.thinks.move(fromOffsets: source, toOffset: destination)
    }
    
    func delete(at offsets: IndexSet) {
        thinkStore.thinks.remove(atOffsets: offsets)
    }
}



struct ListOverthinkView_Previews: PreviewProvider {
    static var previews: some View {
        ListOverthinkView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}

