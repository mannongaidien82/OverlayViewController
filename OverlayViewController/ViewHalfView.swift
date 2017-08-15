//
//  ViewHalfView.swift
//  OverlayViewController
//
//  Created by tran-ngocdien on 2017/08/14.
//  Copyright © 2017 Andrey Gordeev (andrew8712@gmail.com). All rights reserved.
//

import Foundation
import UIKit
import WebKit

protocol ViewHalfViewProtocol {
    func testtt(tag: Int)
}

class ViewHalfView : UIView {
    let webView: WKWebView = WKWebView()
    let kScheme = "native://"
    let webviewTopMargin : CGFloat = 0
    let webviewBottomMargin : CGFloat = 0
    
    //var searchText = ""
    
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
        
        settingWebview()
    }
    
}


