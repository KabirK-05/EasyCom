//
//  ChatController.swift
//  EasyTalk
//
//  Created by Kabir Kumar on 2024-08-09.
//

import Foundation
import OpenAI


struct Message: Identifiable {
    var id: UUID = .init()
    var content: String
    var isUser: Bool
}


class ChatController: ObservableObject {
    @Published var messages: [Message] = []
    @Published var outputMessages: Message? = nil
    @Published var streamedText = "Generated text"
    
    let openAI = OpenAI(apiToken:
        "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"
    )
    
    func sendNewMessage(content: String) {
        let userMessage = Message(content: content, isUser: true)
        self.messages.append(userMessage)
        getBotReply()
    }
    
    func clearText() {
        self.streamedText = ""
    }
    
    func presetButtonText(buttonID: Int) {
        switch buttonID {
        case 1:
            clearText()
            sendNewMessage(content: locationButtonScript)
        default:
            print("failure")
        }
        
    }
    
    
    func getBotReply() {
        clearText()
        let query = ChatQuery(
            messages: self.messages.map({
                .init(role: .user, content: $0.content)!
            }),
            model: .gpt3_5Turbo
        )
        
        
        
//        openAI.chats(query: query) { result in
//            switch result {
//            case .success(let success):
//                guard let choice = success.choices.first else {
//                    return
//                }
//                guard let message = choice.message.content?.string else { return }
//                DispatchQueue.main.async {
//                    self.outputMessages = Message(content: message, isUser: false)
//                }
//            case .failure(let failure):
//                print(failure)
//            }
//        }
        
        openAI.chatsStream(query: query) { partialResult in
            switch partialResult {
            case .success(let result):
                if let content = result.choices.first?.delta.content {
                    DispatchQueue.main.async {
                        self.streamedText += content
                    }
                }
            case .failure(let error):
                print("Streaming chunk error: \(error.localizedDescription)")
            }
        } completion: { error in
            if let error = error {
                print("Streaming completion error: \(error.localizedDescription)")
            } else {
                // When streaming completes, save the final message
                DispatchQueue.main.async {
                    //self.messages.append(Message(content: self.streamedText, isUser: false))
                    self.outputMessages = Message(content: self.streamedText, isUser: false)
                }
            }
        }
        
        
    }
}
