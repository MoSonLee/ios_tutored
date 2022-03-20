//
//  DetailCell.swift
//  ServicePractice
//
//  Created by 이승후 on 2022/03/20.
//

import UIKit
import SnapKit

final class DetailCell: UITableViewCell {
    
    static let identifier = "DetailCell"
    static let height: CGFloat = UITableView.automaticDimension

    private let titleTextView = UITextView()
    private let emojiView = EmojiView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        contentView.addSubview(emojiView)
        contentView.addSubview(titleTextView)
        emojiView.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(40)
        }
        titleTextView.snp.makeConstraints { make in
            make.top.left.equalToSuperview()
            make.right.equalTo(emojiView.snp.left).offset(-16)
            make.bottom.equalToSuperview().priority(.medium)
        }
        
        titleTextView.isScrollEnabled = false
        titleTextView.font = .systemFont(ofSize: 20)
       // titleTextView.backgroundColor = .yellow200
    }
    
    func configure(title text: String, emoji: String) {
        self.titleTextView.text = text
        self.emojiView.setEmoji(emoji: emoji)
    }

}
