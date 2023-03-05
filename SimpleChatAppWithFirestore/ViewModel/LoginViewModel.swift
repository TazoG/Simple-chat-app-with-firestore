//
//  LoginViewModel.swift
//  SimpleChatAppWithFirestore
//
//  Created by Tazo Gigitashvili on 05.03.23.
//

import Foundation

struct LoginViewModel {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
}
