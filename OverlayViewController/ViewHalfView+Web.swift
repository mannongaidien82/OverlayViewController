//
//  ViewHalfView+Web.swift
//  OverlayViewController
//
//  Created by tran-ngocdien on 2017/08/14.
//  Copyright © 2017 Andrey Gordeev (andrew8712@gmail.com). All rights reserved.
//

import Foundation
import WebKit
import UIKit

extension ViewHalfView : WKNavigationDelegate {
    
    func settingWebview() {
        //setting()
        
        //self.addSubview(webView)
        
        //setWebViewLayoutWithConstant(constant: 0.0)
        //webView.backgroundColor = UIColor.blue
        //loadWebView()
    }
    
    func setting() {
        // Autolayoutを設定
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.scrollView.isScrollEnabled = true
        
        webView.frame = self.bounds
        webView.navigationDelegate = self
        webView.scrollView.bounces = false
        webView.scrollView.layer.masksToBounds = false
        
    }
    
    func loadWebView() {
        // let htmlPath = Bundle.main.path(forResource: "kanjigame/call_native_index", ofType: "html")
        let url = Bundle.main.url(forResource: "history_tratu", withExtension: ".html", subdirectory: "html_assest")!
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
    
    func webView(_ webView: WKWebView,
                 decidePolicyFor navigationAction: WKNavigationAction,
                 decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        var policy = WKNavigationActionPolicy.allow
        if let url = navigationAction.request.url?.absoluteString {
            if url.hasPrefix(kScheme) {
                //evaluateJs("addTextNode('\(url) ');")
                decideHand(url: url)
                //test(title: url)
                print("url = " + url)
                policy = WKNavigationActionPolicy.cancel  // ページ遷移を行わないようにcancelを返す
            }
        }
        decisionHandler(policy)
    }
    
    func evaluateJs(_ script: String) {
        webView.evaluateJavaScript(script, completionHandler: {(result: Any?, error: Error?) in
            print("JS result=\(String(describing: result)), error=\(String(describing: error))")
        })
    }
    
    func setWebViewLayoutWithConstant(constant: CGFloat){
        // Constraintsを一度削除する
        for constraint in self.constraints {
            let secondItem: WKWebView? = constraint.secondItem as? WKWebView
            let firstItem: WKWebView? = constraint.firstItem as? WKWebView
            if firstItem == self.webView || secondItem == self.webView {
                self.removeConstraint(constraint)
            }
        }
        // Constraintsを追加
        self.addConstraint(NSLayoutConstraint(item: webView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: webviewTopMargin))
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: self.webView, attribute:.bottom, multiplier: 1, constant: webviewBottomMargin))
        
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: self.webView, attribute: .trailing, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: webView, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 0))
        
    }
    
}
