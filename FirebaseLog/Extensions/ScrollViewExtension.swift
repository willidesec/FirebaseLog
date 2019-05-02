//
//  ScrollViewExtension.swift
//  FirebaseLog
//
//  Created by William on 02/05/2019.
//  Copyright © 2019 William Désécot. All rights reserved.
//

import UIKit

extension ViewController: UIScrollViewDelegate {
    
    func setupScrollView() {
        scrollView.delegate = self
        let maximalWidth = view.frame.width
        widthConstraint.constant = maximalWidth - 16
        let heightUI = disconnectButton.frame.maxY + 20
        scrollView.contentSize = CGSize(width: maximalWidth, height: heightUI)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        view.endEditing(true)
    }
}
