//
//  ButtonView.swift
//  NewTrafficLightApp
//
//  Created by Sosin Vladislav on 16.02.2023.
//

import SwiftUI

struct ButtonView: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: { action() }) {
            Text("Next color")
                .font(.title)
                .foregroundColor(.white)
                .bold()
        }
        .frame(width: 170, height: 50)
        .background(.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.white, lineWidth: 2))
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {})
    }
}
