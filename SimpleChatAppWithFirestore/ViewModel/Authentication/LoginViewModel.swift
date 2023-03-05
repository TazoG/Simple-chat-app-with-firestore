//
//  LoginViewModel.swift
//  SimpleChatAppWithFirestore
//
//  Created by Tazo Gigitashvili on 05.03.23.
//

import Foundation

protocol AuthenticationProtocol {
    var formIsValid: Bool { get }
}

struct LoginViewModel: AuthenticationProtocol {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
}
