//
//  HomeView.swift
//  EasyTalk
//
//  Created by Kabir Kumar on 2024-08-06.
//

import SwiftUI

struct HomeView: View {
    //@StateObject var chatController: ChatController = .init()
    @EnvironmentObject var chatController: ChatController
    @State var GPTInputText = ""
    
    var body: some View {
        ZStack {
            
            // Main view stack
            GeometryReader { geometry in
                VStack (spacing: 0){
                    

                    GeneratedTextBox(width: geometry.size.width * 0.9, height: geometry.size.height * 0.25, textOffset: geometry.size.width * 0.04, message: chatController.outputMessages, streamed: chatController.streamedText)
                    .padding(.top, 10)
                    Spacer()
                    
                    InputTextField(width: 100, height: 100, chatController: chatController)
                    
                    PresetBar(width: geometry.size.width * 0.9, height: geometry.size.height * 0.1)
                    

                }
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(ChatController())
}
