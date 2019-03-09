//
//  InstagramProfileViewController.swift
//  Parts1
//
//  Created by 伊原萌夏 on 2019/03/09.
//  Copyright © 2019年 伊原萌夏. All rights reserved.
//

import UIKit
import WebKit
// MARK: - Property
class InstagramProfileViewController: BaseViewController {
    var webView: WKWebView!
}

// MARK: - Life cycle
extension InstagramProfileViewController: WKUIDelegate, WKNavigationDelegate {
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        view = webView
        animatorManager.navigationType = .pop
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let instaURL = URL(string: "https://www.instagram.com/corp.playground/?hl=ja")
        let instaRequest = URLRequest(url: instaURL!)
        webView.load(instaRequest)
    }
}

// MARK: - Protocol
extension InstagramProfileViewController {
    
}

// MARK: - method
extension InstagramProfileViewController {
    
}
