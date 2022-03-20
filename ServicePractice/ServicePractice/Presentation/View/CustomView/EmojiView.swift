//
//  EmojiView.swift
//  ServicePractice
//
//  Created by 이승후 on 2022/03/20.
//

import UIKit
import SnapKit

final class EmojiView: UIView {
    
    private let emojiLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setconfigurations()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = bounds.width / 2
    }
    
    private func setConstraints() {
        addSubview(emojiLabel)
        emojiLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
    }
    
    private func setconfigurations() {
        backgroundColor = .coral400
        layer.masksToBounds = true
    }
    
    func setEmoji(emoji text: String) {
        emojiLabel.text = text
    }
}
