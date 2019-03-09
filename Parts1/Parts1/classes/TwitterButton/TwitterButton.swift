//
//  TwitterButton.swift
//  Parts1
//
//  Created by 伊原萌夏 on 2019/03/09.
//  Copyright © 2019年 伊原萌夏. All rights reserved.
//

import UIKit

protocol TwitterButtonDelegate: NSObjectProtocol{
    func twitterButton(_ sender: UIButton)
}

extension TwitterButtonDelegate {
    
}
// MARK: - Property
class TwitterButton: BaseView {
    weak var delegate: TwitterButtonDelegate? = nil
    @IBAction func twitterButton(_ sender: UIButton) {
        delegate?.twitterButton(sender)
    }
}

// MARK: - Life cycle
extension TwitterButton {
    
}

// MARK: - Protocol
extension TwitterButton {
    
}

// MARK: - method
extension TwitterButton {
    
}
