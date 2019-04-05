//
//  LaunchMailerMainView.swift
//  LaunchMailer
//
//  Created by Masatomo on 2019/04/04.
//  Copyright © 2019 Masatomo Kobi. All rights reserved.
//

import UIKit

protocol LaunchMailerMainViewDelegate: NSObjectProtocol{
    func touchedLaunchMailer(_ sender: UIButton)
}

extension LaunchMailerMainViewDelegate {
    
}
// MARK: - Property
class LaunchMailerMainView: BaseView {
    weak var delegate: LaunchMailerMainViewDelegate? = nil
    @IBAction func touchedLaunchMailer(_ sender: UIButton) {
        delegate?.touchedLaunchMailer(sender)
    }
}

// MARK: - Life cycle
extension LaunchMailerMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension LaunchMailerMainView {
    
}

// MARK: - method
extension LaunchMailerMainView {
    
}
