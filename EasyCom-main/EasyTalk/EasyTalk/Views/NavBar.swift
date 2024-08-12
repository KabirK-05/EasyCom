//
//  NavBar.swift
//  EasyTalk
//
//  Created by Kabir Kumar on 2024-08-05.
//

import SwiftUI
import Neumorphic

struct GlowingBlueCircle: View {
    let width: CGFloat
    let height: CGFloat
    var body: some View {
        Ellipse()
        .foregroundColor(.clear)
        .frame(width: width, height: height)
        .background(GlowingBlueCircleColor)
        .blur(radius: 150)

    }
}

struct NavBar: View {

    @Binding var selectedTab: Int
    
    var body: some View {

        HStack{
                    Spacer()
                    NavBarButtons(icon: "house.fill", size: 10, isSelected: $selectedTab, tag: 0)
                    Spacer()
                    Spacer()
                    NavBarButtons(icon: "wand.and.stars", size: 10, isSelected: $selectedTab, tag: 1)
                    Spacer()
                    Spacer()
                    NavBarButtons(icon: "safari.fill", size: 10, isSelected: $selectedTab, tag: 2)
                    Spacer()
                    Spacer()
                    NavBarButtons(icon: "mappin.and.ellipse", size: 10, isSelected: $selectedTab, tag: 3)
                    Spacer()
                }
                .padding()
                .background(MainNeumorphicBlack)
        }
}

struct NavBarButtons: View {
    let icon: String
    let size: CGFloat
    @Binding var isSelected: Int
    let tag: Int

    
    var body: some View {
        Button(action: {
            isSelected = tag
            
        }) {

            Image(systemName: icon)
                .foregroundColor(isSelected == tag ? TappedTextColour :TextColour)
                .shadow(color: isSelected == tag ? TappedTextColour.opacity(0.8) : TextColour, radius: isSelected == tag ? 10 : 0)
                .font(.title2)
        }
        .buttonStyle(GlowingButtonStyle())
    }
}


struct ShowNavBar: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        NavBar(selectedTab: $selectedTab)
    }
}

#Preview {
    ShowNavBar()
}
