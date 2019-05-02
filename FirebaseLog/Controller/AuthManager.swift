//
//  AuthManager.swift
//  FirebaseLog
//
//  Created by William on 02/05/2019.
//  Copyright © 2019 William Désécot. All rights reserved.
//

import UIKit
import FirebaseAuth

extension ViewController {
    
    func connectWith(_ mail: String, _ password: String) {
        Auth.auth().signIn(withEmail: mail, password: password) { (authDataResult, error) in
            if let error = error {
                let nsError = error as NSError
                if nsError.code == 17011 {
                    // Create user
                } else {
                    Alerts.shared.error(message: error.localizedDescription, controller: self)
                }
            }
            if let user = authDataResult?.user {
                Alerts.shared.newUser(message: user.email ?? "", controller: self)
            }
        }
    }
    
    func createUser(_ mail: String, _ password: String) {
        Auth.auth().createUser(withEmail: mail, password: password) { (authDataResult, error) in
            if let error = error {
                Alerts.shared.error(message: error.localizedDescription, controller: self)
            }
            if let user = authDataResult?.user {
                // Save user in Database
                Alerts.shared.newUser(message: user.email ?? "", controller: self)
            }
        }
    }
}
