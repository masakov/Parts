//
//  FacebookProfileViewController.swift
//  Parts1
//
//  Created by 伊原萌夏 on 2019/03/08.
//  Copyright © 2019年 伊原萌夏. All rights reserved.
//

import UIKit
// MARK: - Property
class FacebookProfileViewController: BaseViewController {
    @IBOutlet weak var webView: UIWebView!
    
    
}

// MARK: - Life cycle
extension FacebookProfileViewController {
    override func loadView() {
        super.loadView()
        animatorManager.navigationType = .pop
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //webViewのサイズを設定
        webView.frame = self.view.bounds
        
        //接続するurlを生成
        let url = URL(string: "https://www.facebook.com/PlaygroundCo2019")!
        
        //リクエストの生成
        let req = NSURLRequest(url: url)
        
        //webViewにurlを設定
        webView.loadRequest(req as URLRequest)
        
        //webViewをSubViewとして追加
        self.view.addSubview(webView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK: - Protocol
extension FacebookProfileViewController {
    
    
}

// MARK: - method
extension FacebookProfileViewController {
    
}
