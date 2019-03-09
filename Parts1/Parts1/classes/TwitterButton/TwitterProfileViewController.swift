//
//  TwitterProfileViewController.swift
//  Parts1
//
//  Created by 伊原萌夏 on 2019/03/09.
//  Copyright © 2019年 伊原萌夏. All rights reserved.
//

import UIKit
import WebKit

// MARK: - Property
class TwitterProfileViewController: BaseViewController {
    var webView: WKWebView!
}

// MARK: - Life cycle
extension TwitterProfileViewController: WKUIDelegate, WKNavigationDelegate {
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
        let twitterURL = URL(string: "https://twitter.com/playgro01024971")
        let twitterRequest = URLRequest(url: twitterURL!)
        webView.load(twitterRequest)
    }
}

// MARK: - Protocol
extension TwitterProfileViewController {
    
}

// MARK: - method
extension TwitterProfileViewController {
    
}
