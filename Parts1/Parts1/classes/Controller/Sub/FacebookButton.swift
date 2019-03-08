//
//  FacebookButton.swift
//  Parts1
//
//  Created by 伊原萌夏 on 2019/03/08.
//  Copyright © 2019年 伊原萌夏. All rights reserved.
//

import UIKit

protocol FacebookButtonDelegate: NSObjectProtocol{
    func touchedFacebookButton(_ sender: UIButton)
}

extension FacebookButtonDelegate {
    func facebookButton(_ sender: UIButton) {
    }
}
// MARK: - Property
class FacebookButton: BaseView {
    weak var delegate: FacebookButtonDelegate? = nil
    @IBAction func touchedFacebookButton(_ sender: UIButton) {
        delegate?.touchedFacebookButton(sender)
    }
    
}

// MARK: - Life cycle
extension FacebookButton {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

// MARK: - Protocol
extension FacebookButton {
    
}

// MARK: - method
extension FacebookButton {
    
}
