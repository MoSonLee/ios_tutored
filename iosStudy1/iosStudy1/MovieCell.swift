//
//  MovieCell.swift
//  iosStudy1
//
//  Created by 이승후 on 2022/02/08.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak private var movieImageView: UIImageView!
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var subTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)
        
    }
    
    func updateUI(array: [String]) {
        movieImageView.image = UIImage(named: array[0])
        titleLabel.text = array[1]
        subTitleLabel.text = array[2]
    }
}
