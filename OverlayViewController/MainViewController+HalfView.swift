//
//  UIViewController+HalfView.swift
//  OverlayViewController
//
//  Created by tran-ngocdien on 2017/08/14.
//  Copyright © 2017 Andrey Gordeev (andrew8712@gmail.com). All rights reserved.
//

import Foundation
import UIKit

extension MainViewController {
    
    func settingHalfView() {
        //initNavigationItemTitleView(title: "Reading", selector: #selector(self.naviTap))
        //self.editText.setDoneOnKeyboard()
        //editText.delegate = self
        //editText.returnKeyType = .go
        //halfViewHeight = halfViewConstraint.constant
        
        //toogleHalfView()

    }
    
    func toogleHalfView() {
        if(self.halfViewConstraint.constant == 1) {
            showHalfView()
        } else {
            hideHalfView()
        }
    }
    
    func hideHalfView() {
        self.halfViewConstraint.constant = 1
        // Bonus: animating change
        UIView.animate(withDuration: 0.3) { () -> Void in
            self.view.layoutIfNeeded()
        }
        //self.dictionaryView.isHidden = true
    }
    
    func showHalfView() {
        halfViewConstraint.constant = halfViewHeight
        UIView.animate(withDuration: 0.3) { () -> Void in
            self.view.layoutIfNeeded()
        }
        //self.dictionaryView.isHidden = false
        //self.view.bringSubview(toFront: self.dictionaryView)
    }
    
}
