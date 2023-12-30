//
//  ContentView.swift
//  GameNight
//
//  Created by Elias Breitenbach on 27.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name1 = ""
    @State private var name2 = ""
    @State private var name3 = ""
    @State private var name4 = ""
    
    @State private var counter1: Int = 0
    @State private var counter2: Int = 0
    @State private var counter3: Int = 0
    @State private var counter4: Int = 0
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.4, green: 0.9, blue: 0.8), location: 0.1),
                .init(color: Color(red: 0.9, green: 0.8, blue: 0.8), location: 0.5),
            ], center: .top, startRadius: 300, endRadius: 500)
            .ignoresSafeArea()
            VStack {
                Text("Game Night")
                    .font(.largeTitle)
                    .padding()
                
                Section {
                        TextField("Spielername", text: $name1)
                        Text("\(counter1)")
                    
                    HStack {
                        Button("🔼") {
                            counter1 += 1
                        }
                        Button("🔽") {
                            counter1 -= 1
                        }
                    }
                    .buttonStyle(.plain)
                    .padding()
                }
                
                
                Section {
                    TextField("Spielername", text: $name2)
                    Text("\(counter2)")
                    HStack {
                        Button("🔼") {
                            counter2 += 1
                        }
                        
                        Button("🔽") {
                            counter2 -= 1
                        }
                    }
                    .buttonStyle(.plain)
                    .padding()
                }
                
                Section {
                    TextField("Spielername", text: $name3)
                    Text("\(counter3)")
                    HStack {
                        Button("🔼") {
                            counter3 += 1
                        }
                        
                        Button("🔽") {
                            counter3 -= 1
                        }
                    }
                    .buttonStyle(.plain)
                    .padding()
                }
                
                Section {
                    TextField("Spielername", text: $name4)
                    Text("\(counter4)")
                    HStack {
                        Button("🔼") {
                            counter4 += 1
                        }
                        
                        Button("🔽") {
                            counter4 -= 1
                        }
                    }
                    .buttonStyle(.plain)
                    .padding()
                }
            }
            .background(.regularMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding()
            
        }
    }
}


#Preview {
    ContentView()
}
