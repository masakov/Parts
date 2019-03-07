//
//  CheckBoxButton.swift
//  Sample2
//
//  Created by Hiroki Umatani on 2019/02/13.
//  Copyright © 2019 Playground. All rights reserved.
//

import UIKit

protocol CheckBoxButtonDelegate: NSObjectProtocol{
    func touchedCheckBoxButton(isOn: Bool)
}

extension CheckBoxButtonDelegate {
    func touchedCheckBoxButton(isOn: Bool) {}
}

// MARK: - Property
class CheckBoxButton: BaseView {
    weak var delegate: CheckBoxButtonDelegate? = nil
    @IBOutlet weak var button: UIButton!
    var isOnFlag: Bool = false

    @IBAction func touchButton(_ sender: UIButton) {
        isOn(isOnFlag)
        if let delegate = delegate {
            delegate.touchedCheckBoxButton(isOn: isOnFlag)
        }
    }
}

// MARK: - Life cycle
extension CheckBoxButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        isOn(false)
    }
}

// MARK: - Protocol
extension CheckBoxButton {

}

// MARK: - method
extension CheckBoxButton {
    func isOn(_ isOn: Bool) {
        if isOn {
            isOnFlag = false
            button.setImage(nil, for: .normal)
        } else {
            isOnFlag = true
            let image = UIImage.init(named: "checkbox.png")
            button.setImage(image, for: .normal)
        }
    }
}
