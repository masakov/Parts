//
//  FacebookButton.swift
//  Parts1
//
//  Created by 伊原萌夏 on 2019/03/08.
//  Copyright © 2019年 伊原萌夏. All rights reserved.
//

import UIKit

protocol FacebookButtonDelegate: NSObjectProtocol{
   func facebookButton(_ sender: UIButton)
}

extension FacebookButtonDelegate {
    
}
// MARK: - Property
class FacebookButton: BaseView {
    weak var delegate: FacebookButtonDelegate? = nil
    @IBAction func facebookButton(_ sender: UIButton) {
        delegate?.facebookButton(sender)
    }
}

// MARK: - Life cycle
extension FacebookButton {
    
}

// MARK: - Protocol
extension FacebookButton {
    
}

// MARK: - method
extension FacebookButton {
    
}
