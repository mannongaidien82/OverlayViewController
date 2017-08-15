//
//  ViewController.swift
//  OverlayViewController
//
//  Created by Andrey Gordeev on 4/17/17.
//  Copyright © 2017 Andrey Gordeev (andrew8712@gmail.com). All rights reserved.
//

import UIKit

class ViewController: UIViewController, OverlayHost {
    
    @IBOutlet weak var halfView: UIView!
    @IBOutlet weak var halfViewHeightConstraint: NSLayoutConstraint!
    var halfViewHeight: CGFloat!
    @IBAction func showOverlayButtonPressed() {
        showOverlay(type: MessageViewController.self, fromStoryboardWithName: "Main")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        halfViewHeight = UIScreen.main.bounds.height/2
        halfViewHeightConstraint.constant = halfViewHeight
        //showOverlay(type: MessageViewController.self, fromStoryboardWithName: "Main")
        // Do any additional setup after loading the view.
    }
    
    func settingHalfView() {
        //initNavigationItemTitleView(title: "Reading", selector: #selector(self.naviTap))
        //self.editText.setDoneOnKeyboard()
        //editText.delegate = self
        //editText.returnKeyType = .go
        //halfViewHeight = halfViewConstraint.constant
        
        //toogleHalfView()
        
    }
    
    @IBAction func toogleHalfviewClick(_ sender: Any) {
        toogleHalfView()
    }
    
    func toogleHalfView() {
        if(self.halfViewHeightConstraint.constant == 1) {
            showHalfView()
        } else {
            hideHalfView()
        }
    }
    
    @IBAction func dismiss(_ sender: Any) {
         dismiss(animated: true, completion: nil)
    }
    func hideHalfView() {
        self.halfViewHeightConstraint.constant = 1
        // Bonus: animating change
        UIView.animate(withDuration: 0.3) { () -> Void in
            self.view.layoutIfNeeded()
        }
        //self.dictionaryView.isHidden = true
    }
    
    func showHalfView() {
        halfViewHeightConstraint.constant = halfViewHeight
        UIView.animate(withDuration: 0.3) { () -> Void in
            self.view.layoutIfNeeded()
        }
        //self.dictionaryView.isHidden = false
        //self.view.bringSubview(toFront: self.dictionaryView)
    }

}
