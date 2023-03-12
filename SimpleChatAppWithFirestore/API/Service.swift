//
//  Service.swift
//  SimpleChatAppWithFirestore
//
//  Created by Tazo Gigitashvili on 11.03.23.
//

import Firebase

class Service {
    
    static func fetchUsers(completion: @escaping ([User]) -> Void) {
        var users = [User]()
        
        Firestore.firestore().collection("users").getDocuments { snapshot, error in
            snapshot?.documents.forEach({ document in
                
                let dictionary = document.data()
                let user = User(dictionary: dictionary)
                
                users.append(user)
                completion(users)
            })
        }
    }
}
