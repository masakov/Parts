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
    let facebookProfileController = FacebookProfileViewController()
    @IBOutlet weak var facebookButtonView: FacebookButton!
}

// MARK: - Life cycle
extension DemoViewController {
    override func loadView() {
        super.loadView()
        facebookButtonView.delegate = self
    }
}

// MARK: - Protocol
extension DemoViewController {
    
}

extension DemoViewController: FacebookButtonDelegate {
    func touchedFacebookButton(_ sender: UIButton) {
        transitions(from: self, to: facebookProfileController)
        animatorManager.navigationType = .push
    }
}

// MARK: - method
extension DemoViewController {
    
}
