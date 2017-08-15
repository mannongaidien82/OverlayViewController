//
//  subHalfView.swift
//  OverlayViewController
//
//  Created by tran-ngocdien on 2017/08/15.
//  Copyright © 2017 Andrey Gordeev (andrew8712@gmail.com). All rights reserved.
//

import Foundation
import UIKit

protocol ContainerViewProtocol {
    func testtt(tag: Int)
}

class ContainerView : UIView {
    @IBOutlet weak var halfView: ViewHalfView!
    @IBOutlet weak var halfViewConstraint: NSLayoutConstraint!
    override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        //print("not run")
        // 3. Setup view from .xib file
        //xibSetup()
        onInit()
    }
    
    //@IBInspectable internal var kanjiRow1_Tag : Int!
    // @IBInspectable internal var kanjiRow2_Tag : Int!
    
    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        // print("run me")
        // 3. Setup view from .xib file
        onInit()
    }
    
    
    
    func onInit() {
        
   
    }
    
    @IBAction func toogleHalfviewClick(_ sender: UIButton) {
        toogleHalfView()
    }
    
    @IBAction func expandHalfViewClick(_ sender: UIButton) {
        print(#function)
    }
    
    @IBAction func hideHalfViewClick(_ sender: UIButton) {
        hideHalfView()
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
            self.layoutIfNeeded()
        }
        //self.dictionaryView.isHidden = true
    }
    
    func showHalfView() {
        halfViewConstraint.constant = UIScreen.main.bounds.height/2
        UIView.animate(withDuration: 0.3) { () -> Void in
            self.layoutIfNeeded()
        }
        //self.dictionaryView.isHidden = false
        //self.view.bringSubview(toFront: self.dictionaryView)
    }
    
}


