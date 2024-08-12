//
//  InputTextField.swift
//  EasyTalk
//
//  Created by Kabir Kumar on 2024-08-07.
//

import SwiftUI
import Neumorphic

struct InputTextField: View {
    let width: CGFloat
    let height: CGFloat
    let chatController: ChatController
    
    @State var GPTInputText = ""
    
    var body: some View {
        VStack {
                HStack {
                    Image(systemName: "magnifyingglass").foregroundColor(secondaryColour).font(Font.body.weight(.bold))
                    TextField("Search ...", text: $GPTInputText, prompt: Text("Message for help")
                        .foregroundStyle(TextColour))
                        .foregroundColor(secondaryColour)
                        
                    Spacer()
                    
                    Button {
                        self.chatController.sendNewMessage(content: GPTInputText)
                        GPTInputText = ""
                        
                    } label: {
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(TextColour)
                    }
                    
                    
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 30).fill(MainNeumorphicBlack)
                        .softInnerShadow(RoundedRectangle(cornerRadius: 30), darkShadow: Color.Neumorphic.darkShadow, lightShadow: Color.Neumorphic.lightShadow, spread: 0.05, radius: 2)
                )
            }
            .padding()
    }
}



#Preview {
    //InputTextField(width: 10, height: 10)
    Text("hello")
}
