//
//  ColoursToUse.swift
//  EasyTalk
//
//  Created by Kabir Kumar on 2024-08-05.
//

import Foundation
import SwiftUI
import Neumorphic

let TextColour = Color(hue: 0.645, saturation: 0.266, brightness: 0.974, opacity: 0.47)
let TappedTextColour = Color(hue: 0.575, saturation: 0.442, brightness: 0.859)
let MainNeumorphicBlack = Color.Neumorphic.main
let BackgroundGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 0.16, green: 0.18, blue: 0.20),
                                                                    Color(red: 0.08, green: 0.08, blue: 0.08)]),
                                        startPoint: .top, endPoint: .bottom)

let AreaColor = Color(red: 0.14, green: 0.15, blue: 0.17)
                                                                    
let GlowingBlueCircleColor = Color(red: 0.09, green: 0.50, blue: 0.88).opacity(0.25)


struct GlowingButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? TappedTextColour : TextColour)
            .shadow(color: configuration.isPressed ? TappedTextColour.opacity(0.8) : Color.clear, radius: configuration.isPressed ? 10 : 0)
            .scaleEffect(configuration.isPressed ? 1.1 : 1.0)
    }
}
