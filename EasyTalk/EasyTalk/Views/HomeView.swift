//
//  HomeView.swift
//  EasyTalk
//
//  Created by Kabir Kumar on 2024-08-06.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            // Background colour
//            Rectangle()
//              .foregroundColor(.clear)
//              .background(BackgroundGradient)
//            .ignoresSafeArea()
            
            
            // Main view stack
            GeometryReader { geometry in
                VStack (spacing: 0){
                    
                    
                    
                    GeneratedTextBox(width: geometry.size.width * 0.9, height: geometry.size.height * 0.25, textOffset: geometry.size.width * 0.04)
                        .padding(.top, 40)
                    
                    Spacer()
                    
                    PresetBar(width: geometry.size.width * 0.9, height: geometry.size.height * 0.13)
                    

                }
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    HomeView()
}
