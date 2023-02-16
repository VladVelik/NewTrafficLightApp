//
//  CircleView.swift
//  NewTrafficLightApp
//
//  Created by Sosin Vladislav on 16.02.2023.
//

import SwiftUI

struct CircleView: View {
    var color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .opacity(opacity)
            .overlay(Circle().stroke(.white, lineWidth: 4))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 1)
    }
}
