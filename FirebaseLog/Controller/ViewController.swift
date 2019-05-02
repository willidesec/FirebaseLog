//
//  ViewController.swift
//  FirebaseLog
//
//  Created by William on 01/05/2019.
//  Copyright © 2019 William Désécot. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var facebookButton: UIView!
    @IBOutlet weak var twitterContainer: UIView!
    @IBOutlet weak var disconnectButton: UIButton!
    
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomScrollViewConstraint: NSLayoutConstraint!
    

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardIn), name: UIApplication.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardOut), name: UIApplication.keyboardWillHideNotification, object: nil)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupScrollView()
    }
    
    // MARK: - Methods
    @objc func keyboardIn(notification: Notification) {
        if let height = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue.height {
            animateView(constant: height)
        }
    }
    
    @objc func keyboardOut(notification: Notification) {
        animateView(constant: 0)
    }
    
    func animateView(constant: CGFloat) {
        UIView.animate(withDuration: 0.35) {
            self.bottomScrollViewConstraint.constant = constant
        }
    }
    
    // MARK: - Actions
    @IBAction func connectButtonDidTapped(_ sender: Any) {
    }
    
    @IBAction func googleButtonDidTapped(_ sender: Any) {
    }
    
    @IBAction func googleCustomButtonDidTapped(_ sender: Any) {
    }
    
    @IBAction func facebookCustomButtonDidTapped(_ sender: Any) {
    }
    
    @IBAction func twitterCustomButtonDidTapped(_ sender: Any) {
    }
    
    @IBAction func disconnectButtonDidTapped(_ sender: Any) {
    }
    
}

