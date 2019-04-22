//
//  DemoViewController.swift
//  Parts1
//
//  Created by 伊原萌夏 on 2019/03/07.
//  Copyright © 2019年 伊原萌夏. All rights reserved.
//

import UIKit
import MessageUI

// MARK: - Property
class DemoViewController: BaseViewController, MFMailComposeViewControllerDelegate{
    let facebookProfileViewController = FacebookProfileViewController()
    let instagramProfileViewController = InstagramProfileViewController()
    let twitterProfileViewController = TwitterProfileViewController()
    @IBOutlet weak var facebookButtonView: FacebookButton!
    @IBOutlet weak var instagramButtonView: InstagramButton!
    @IBOutlet weak var launchMailerMainView: LaunchMailerMainView!
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
        launchMailerMainView.delegate = self
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

extension DemoViewController: LaunchMailerMainViewDelegate {
    func touchedLaunchMailer(_ sender: UIButton) {
        launchMailer(To: "test@playground.com", Subject: "hogehogePlayground")
    }
extension DemoViewController: TextLinkViewDelegate {
}

// MARK: - method
extension DemoViewController {
    func launchMailer(To: String, Subject: String){
        let mailViewController = MFMailComposeViewController()
//        let CcRecipients = ["Cchoge@playground.com","Cchoge2@playground.com"]
//        let BccRecipients = ["Bcchoge@playground.com","Bcchoge2@playground.com"]
        mailViewController.mailComposeDelegate = self
        mailViewController.setToRecipients([To]) //Toアドレスの表示
        mailViewController.setSubject(Subject)
//        mailViewController.setCcRecipients(CcRecipients) //Ccアドレスの表示
//        mailViewController.setBccRecipients(BccRecipients) //Bccアドレスの表示
//        mailViewController.setMessageBody("hogehoge playground", isHTML: false)
        
        present(mailViewController, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        switch result {
        case .cancelled:
            print("キャンセルしました")
        case .saved:
            print("セーブしました")
        case .sent:
            print("送信しました")
        case .failed:
            print("失敗しました。")
        default:
            print("エラー")
        }
        self.dismiss(animated: true, completion: nil)
    }
}
