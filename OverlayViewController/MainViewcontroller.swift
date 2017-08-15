//
//  MainViewcontroller.swift
//  OverlayViewController
//
//  Created by tran-ngocdien on 2017/08/15.
//  Copyright © 2017 Andrey Gordeev (andrew8712@gmail.com). All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var halfViewConstraint: NSLayoutConstraint!
    var halfViewHeight: CGFloat!
    
    @IBOutlet weak var halfView: ViewHalfView!
    @IBAction func showOverlayButtonPressed() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let newViewController = storyboard.instantiateInitialViewController() as? ViewController {
            let navController = UINavigationController(rootViewController: newViewController) // Creating a navigation controller with VC1 at the root of the navigation stack.
            setWhiteArrowBack()
            self.present(navController, animated:true, completion: nil)
        }
        
    }
    
    func setWhiteArrowBack (target: Selector? = nil) {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.done, target:target, action:nil)
        self.navigationController?.navigationBar.tintColor = UIColor.white
        let backArrow = UIImage(named: "back-arrow")
        self.navigationController?.navigationBar.backIndicatorImage = backArrow
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backArrow
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onInit()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toogleHalfviewClick(_ sender: Any) {
        toogleHalfView()
    }
    func onInit() {
        halfViewHeight = UIScreen.main.bounds.height/2
        halfViewConstraint.constant = halfViewHeight
        self.view.bringSubview(toFront: halfView)
        settingHalfView()
    }
}
