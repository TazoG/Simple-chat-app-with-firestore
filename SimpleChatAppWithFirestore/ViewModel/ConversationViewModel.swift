//
//  ConversationViewModel.swift
//  SimpleChatAppWithFirestore
//
//  Created by Tazo Gigitashvili on 18.03.23.
//

import Foundation

struct ConversationViewModel {
    
    private let conversation: Conversation
    
    var profileImageUrl: URL? {
        return URL(string: conversation.user.profileImageUrl)
    }
    
    var timestamp: String {
        let date = conversation.message.timestamp.dateValue()
        let dateFormmater = DateFormatter()
        dateFormmater.dateFormat = "hh:mm a"
        return dateFormmater.string(from: date)
    }
    
    init(conversation: Conversation) {
        self.conversation = conversation
    }
}
