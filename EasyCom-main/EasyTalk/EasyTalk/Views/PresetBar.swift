//
//  PresetBar.swift
//  EasyTalk
//
//  Created by Kabir Kumar on 2024-08-03.
//

import SwiftUI
import Neumorphic


struct PresetBar: View {

    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        HStack(spacing: width * 0.09) {
            PresetButtons(icon: "location.fill", size: height * 0.06, buttonID: 1)
            PresetButtons(icon: "person.fill", size: height * 0.06, buttonID: 2)
            PresetButtons(icon: "cloud.fill", size: height * 0.06, buttonID: 3)
            PresetButtons(icon: "exclamationmark.triangle.fill", size: height * 0.06, buttonID: 4)
        
        }
        .padding()
        .frame(width: width, height: height)
        .background(
            RoundedRectangle(cornerRadius: height * 0.5)
                .fill(MainNeumorphicBlack)
                .softOuterShadow()
        )
        .padding()
    }
}

struct PresetButtons: View {
    
    let icon: String
    let size: CGFloat
    let buttonID: Int
    
    @EnvironmentObject var chatController: ChatController
    
    var body: some View {
        Button(action: {
            chatController.presetButtonText(buttonID: buttonID)
        }) {

        Image(systemName: icon)
                .foregroundColor(TextColour)
                .font(.subheadline)
        }
        .softButtonStyle(Circle(), pressedEffect: .hard)
    }
}


struct ShowPresetBar: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                
                PresetBar(width: geometry.size.width * 0.9, height: geometry.size.height * 0.1)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.Neumorphic.main.ignoresSafeArea())
        }
    }
}

#Preview {
    ShowPresetBar()
}
