//
//  FacebookExtension.swift
//  FirebaseLog
//
//  Created by William on 04/05/2019.
//  Copyright © 2019 William Désécot. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FirebaseAuth

extension ViewController: FBSDKLoginButtonDelegate {
    
    func setupFacebook() {
        facebookButton.delegate = self
        facebookButton.readPermissions = ["email", "public_profile"]
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        getFacebookCredential(result, error)
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        // Nothing
    }
    
    func getFacebookCredential(_ result: FBSDKLoginManagerLoginResult?, _ error: Error?) {
        if let error = error {
            Alerts.shared.error(message: error.localizedDescription, controller: self)
        }
        if let result = result {
            let credential = FacebookAuthProvider.credential(withAccessToken: result.token.tokenString)
            connectWith(credential)
        }
    }
    
    @IBAction func facebookCustomButtonDidTapped(_ sender: Any) {
        let read = ["email", "public_profile"]
        facebookManager.logIn(withReadPermissions: read, from: self) { (result, error) in
            self.getFacebookCredential(result, error)
        }
    }
    
    
}
