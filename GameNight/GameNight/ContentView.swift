//
//  ContentView.swift
//  GameNight
//
//  Created by Elias Breitenbach on 27.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var counter: Int = 0
    
    var body: some View {
        VStack {
            List {
                HStack {
                    TextField("Name Spieler 1", value: $counter, formatter: .)
                    
                    var count = counter
                    HStack {
                    Button {
                        count += 1
                    } label: {
                        Text("🔼")
                        Text("🔽")
                    }
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
