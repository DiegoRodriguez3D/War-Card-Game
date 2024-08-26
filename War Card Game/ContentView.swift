//
//  ContentView.swift
//  War Card Game
//
//  Created by Diego Rodriguez on 26/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image("card2")
                    
                    Spacer()
                    
                    Image("card3")
                    Spacer()
                }
                
                Spacer()
                
                Image("button")
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("PLAYER")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                
                Spacer()

            }
        }
    }
}

#Preview {
    ContentView()
}
