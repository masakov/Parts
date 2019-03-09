//
//  InstagramButton.swift
//  Parts1
//
//  Created by 伊原萌夏 on 2019/03/09.
//  Copyright © 2019年 伊原萌夏. All rights reserved.
//

import UIKit

protocol InstagramButtonDelegate: NSObjectProtocol{
    func imstagramButton(_ sender: UIButton)
}

extension InstagramButtonDelegate {
    
}
// MARK: - Property
class InstagramButton: BaseView {
    weak var delegate: InstagramButtonDelegate? = nil
    @IBAction func imstagramButton(_ sender: UIButton) {
        delegate?.imstagramButton(sender)
    }
}

// MARK: - Life cycle
extension InstagramButton {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension InstagramButton {
    
}

// MARK: - method
extension InstagramButton {
    
}
