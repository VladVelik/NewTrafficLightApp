//
//  ContentView.swift
//  NewTrafficLightApp
//
//  Created by Sosin Vladislav on 16.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                CircleView(color: .red, opacity: checker(id: 1))
                CircleView(color: .yellow, opacity: checker(id: 2))
                CircleView(color: .green, opacity: checker(id: 3))
                Spacer()
                ButtonView() {
                    counter += 1
                    if counter % 4 == 0 {
                        counter += 1
                    }
                }
            }
            .padding()
        }
    }
    
    private func checker(id: Int) -> Double {
        (counter % 4 == id) ? 1.0 : 0.4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
