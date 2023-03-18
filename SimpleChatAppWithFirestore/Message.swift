//
//  Message.swift
//  SimpleChatAppWithFirestore
//
//  Created by Tazo Gigitashvili on 12.03.23.
//

import Firebase

struct Message {
    let text: String
    let toId: String
    let fromId: String
    var timestamp: Timestamp!
    var user: User?
    
    let isFromCurrentUser: Bool
    
    init(dictionay: [String: Any]) {
        self.text = dictionay["text"] as? String ?? ""
        self.toId = dictionay["toId"] as? String ?? ""
        self.fromId = dictionay["fromId"] as? String ?? ""
        self.timestamp = dictionay["timestamp"] as? Timestamp ?? Timestamp(date: Date())
        
        self.isFromCurrentUser = fromId == Auth.auth().currentUser?.uid
    }
}
