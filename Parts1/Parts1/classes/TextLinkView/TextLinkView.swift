//
//  TextLinkView.swift
//  TextLinkView
//
//  Created by Takaaki Inagaki on 2019/04/05.
//  Copyright © 2019 Takaaki Inagaki. All rights reserved.
//

import UIKit

protocol TextLinkViewDelegate: NSObjectProtocol{
    
}

extension TextLinkViewDelegate {
    
}

// MARK: - Property
class TextLinkView: BaseView {
    weak var delegate: TextLinkViewDelegate? = nil
    @IBOutlet weak var textView: UITextView!
}

// MARK: - Life cycle
extension TextLinkView {
    override func awakeFromNib() {
        super.awakeFromNib()
        textView.isSelectable = true
        textView.isEditable = false
    }
    
}

// MARK: - Protocol
extension TextLinkView {
    
}

// MARK: - method
extension TextLinkView {
    func updateLinkText(text: String, linkText: String, str_url: String) {
        textView?.text = text
        let link: String = linkText
        let url: String = str_url
        
        let attributedString = NSMutableAttributedString(string: textView.text)
        let range = NSString(string: textView.text).range(of: link)
        
        attributedString.addAttribute(.foregroundColor, value: UIColor.blue, range: range)
        attributedString.addAttribute(.underlineStyle, value: 1, range: range)
        attributedString.addAttribute(.link, value: url, range: range)
        
        textView.attributedText = attributedString
    }
}
