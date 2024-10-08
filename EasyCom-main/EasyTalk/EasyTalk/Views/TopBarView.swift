//
//  TopBarView.swift
//  EasyTalk
//
//  Created by Kabir Kumar on 2024-08-06.
//

import SwiftUI

struct TopPage: View {
    var body: some View {
        
        HStack {
            
            Text("EasyCom")
                .font(
                Font.custom("Inter", size: 25)
                    .weight(.heavy)
                )
            .kerning(0.38)
            .multilineTextAlignment(.center)
//            .foregroundColor(.white)
//            .shadow(color: Color.black.opacity(0.7), radius: 5, x: 5, y: 5)
//            .shadow(color: Color.white.opacity(0.1), radius: 5, x: -2.5, y: -2.5)
            .foregroundColor(TappedTextColour)
            .shadow(color: TappedTextColour.opacity(0.9), radius:  10)
            .padding([.top, .leading, .bottom], 25.0)
            
            Spacer()
            
            NavigationLink(destination: SettingsView(), label: {SettingsButton()})


        }
    }
}

struct SettingsButton: View {
    var body: some View {

        Image(systemName: "gearshape.fill")
            .padding()
            .font(.system(size: 25))
            .foregroundColor(TextColour)
//            .background(Circle()
//            .foregroundColor(AreaColor)
//            .shadow(color: Color.black.opacity(0.7), radius: 5, x: 5, y: 5)
//            .shadow(color: Color.white.opacity(0.1), radius: 5, x: -2.5, y: -2.5)
//
//                
//            )
            .foregroundColor(TextColour)
            .padding(.trailing)
    }
}
#Preview {
    TopPage()
}
