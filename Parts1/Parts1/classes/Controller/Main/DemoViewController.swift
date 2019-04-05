//
//  DemoViewController.swift
//  Parts1
//
//  Created by 伊原萌夏 on 2019/03/07.
//  Copyright © 2019年 伊原萌夏. All rights reserved.
//

import UIKit

// MARK: - Property
class DemoViewController: BaseViewController{
    let facebookProfileViewController = FacebookProfileViewController()
    let instagramProfileViewController = InstagramProfileViewController()
    let twitterProfileViewController = TwitterProfileViewController()
    @IBOutlet weak var facebookButtonView: FacebookButton!
    @IBOutlet weak var instagramButtonView: InstagramButton!
    @IBOutlet weak var twitterButtonView: TwitterButton!
    @IBOutlet weak var textLinkView: TextLinkView!
}

// MARK: - Life cycle
extension DemoViewController {
    override func loadView() {
        super.loadView()
        facebookButtonView.delegate = self
        instagramButtonView.delegate = self
        twitterButtonView.delegate = self
        textLinkView.delegate = self
        self.textLinkView.updateLinkText(text: "お問い合わせはコチラ", linkText: "コチラ", str_url: "https://support.apple.com/ja-jp/contact")
    }
}

// MARK: - Protocol
extension DemoViewController {
    
}

extension DemoViewController: FacebookButtonDelegate {
    func touchedFacebookButton(_ sender: UIButton) {
        transitions(from: self, to: facebookProfileViewController)
        animatorManager.navigationType = .push
    }
}

extension DemoViewController: InstagramButtonDelegate {
    func imstagramButton(_ sender: UIButton) {
        transitions(from: self, to: instagramProfileViewController)
        animatorManager.navigationType = .push
    }
}

extension DemoViewController: TwitterButtonDelegate {
    func twitterButton(_ sender: UIButton) {
        transitions(from: self, to: twitterProfileViewController)
        animatorManager.navigationType = .push
    }
}

extension DemoViewController: TextLinkViewDelegate {
    
}

// MARK: - method
extension DemoViewController {
    
}
