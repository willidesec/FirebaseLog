//
//  GoogleExtension.swift
//  FirebaseLog
//
//  Created by William on 04/05/2019.
//  Copyright © 2019 William Désécot. All rights reserved.
//

import UIKit
import GoogleSignIn

extension ViewController: GIDSignInUIDelegate {
    
    func setupGoogle() {
        GIDSignIn.sharedInstance().uiDelegate = self
    }
    
    @IBAction func googleButtonDidTapped(_ sender: Any) {
        GIDSignIn.sharedInstance()?.signIn()
    }
    
    @IBAction func googleCustomButtonDidTapped(_ sender: Any) {
        GIDSignIn.sharedInstance()?.signIn()
    }
}
