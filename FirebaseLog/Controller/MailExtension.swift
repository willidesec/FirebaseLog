//
//  MailExtension.swift
//  FirebaseLog
//
//  Created by William on 02/05/2019.
//  Copyright © 2019 William Désécot. All rights reserved.
//

import UIKit

extension ViewController {
    @IBAction func connectButtonDidTapped(_ sender: Any) {
        if let mail = mailTextField.text, mail != "" {
            if let password = passwordTextField.text, password != "" {
                
            } else {
                Alerts.shared.error(message: "Le mot de passe ne peut pas être vide", controller: self)
            }
        } else {
            Alerts.shared.error(message: "L'adresse mail ne peux pas être vide", controller: self)
        }
    }
}
