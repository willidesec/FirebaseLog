//
//  Alerts.swift
//  FirebaseLog
//
//  Created by William on 02/05/2019.
//  Copyright © 2019 William Désécot. All rights reserved.
//

import UIKit

class Alerts {
    
static let shared = Alerts()
    
    func error(message: String, controller: UIViewController) {
        simpleMessage(title: "Erreur", message: message, controller: controller)
    }
    
    func newUser(message: String, controller: UIViewController) {
        simpleMessage(title: "Nouvel Utilisateur", message: message, controller: controller)
    }
    
    func simpleMessage(title: String, message: String, controller: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        controller.present(alert, animated: true, completion: nil)
    }
}
