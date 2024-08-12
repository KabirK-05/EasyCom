//
//  GeneratedTextBox.swift
//  EasyTalk
//
//  Created by Kabir Kumar on 2024-08-03.
//

import SwiftUI
import Neumorphic

struct GeneratedTextBox: View {
    let width: CGFloat
    let height: CGFloat
    let textOffset: CGFloat
    
    var message: Message?
    
    var streamed: String
    
    var body: some View {
        ScrollView {
            //Text(message?.content ?? "Generated text")
            Text(streamed)
                .font(
                Font.custom("Inter", size: 16)
                .weight(.medium))
                .foregroundColor(secondaryColour)
                .padding([.all], textOffset)
                
        }
        .frame(width: width, height: height, alignment: .topLeading)
            .background(
                RoundedRectangle(cornerRadius: height * 0.1)
                    .fill(MainNeumorphicBlack)
                    .softOuterShadow()
            )
            .padding()
    }
}


struct ShowGeneratedTextBox: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                
//                GeneratedTextBox(width: geometry.size.width * 0.9, height: geometry.size.height * 0.3, textOffset: geometry.size.width * 0.04)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.Neumorphic.main.ignoresSafeArea())
        }
    }
}

#Preview {
    ShowGeneratedTextBox()
}
