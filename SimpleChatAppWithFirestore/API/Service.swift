//
//  Service.swift
//  SimpleChatAppWithFirestore
//
//  Created by Tazo Gigitashvili on 11.03.23.
//

import Firebase

class Service {
    
    static func fetchUsers() {
        Firestore.firestore().collection("users").getDocuments { snapshot, error in
            snapshot?.documents.forEach({ document in
                print(document.data())
            })
        }
    }
}
