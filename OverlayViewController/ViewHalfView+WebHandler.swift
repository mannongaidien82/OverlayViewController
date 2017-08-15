//
//  sadasd.swift
//  OverlayViewController
//
//  Created by tran-ngocdien on 2017/08/14.
//  Copyright © 2017 Andrey Gordeev (andrew8712@gmail.com). All rights reserved.
//

import Foundation
import Foundation
import UIKit

extension ViewHalfView {
    
    func decideHand(url: String) {
        if(url.contains("aaaa")) {
            aaa()
        } else {
            self.evaluateJs("addTextNode('\(url) ');")
        }
    }
    func aaa() {
    }
    
    func scrollToTop() {
        evaluateJs("scrollToTop()")
    }
    
}
