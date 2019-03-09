//
//  FacebookProfileViewController.swift
//  Parts1
//
//  Created by 伊原萌夏 on 2019/03/08.
//  Copyright © 2019年 伊原萌夏. All rights reserved.
//

import UIKit
import WebKit
// MARK: - Property
class FacebookProfileViewController: BaseViewController {
    var webView: WKWebView!
}

// MARK: - Life cycle
extension FacebookProfileViewController: WKUIDelegate, WKNavigationDelegate {
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        view = webView
        animatorManager.navigationType = .pop
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: "https://www.facebook.com/PlaygroundCo2019")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}

// MARK: - Protocol
extension FacebookProfileViewController {
    
    
}

// MARK: - method
extension FacebookProfileViewController {
    
}
