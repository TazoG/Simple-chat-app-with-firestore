//
//  MessageViewModel.swift
//  SimpleChatAppWithFirestore
//
//  Created by Tazo Gigitashvili on 12.03.23.
//

import UIKit

struct MessageViewModel {
    
    private let message: Message
    
    var messageBackgrounColor: UIColor {
        return message.isFromCurrentUser ? .lightGray : .systemPurple
    }
    
    var messageTextColor: UIColor {
        return message.isFromCurrentUser ? .black : .white
    }
    
    init(message: Message) {
        self.message = message
    }
}
