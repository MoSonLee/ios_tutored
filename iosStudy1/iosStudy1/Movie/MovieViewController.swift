//
//  MovieViewController.swift
//  iosStudy1
//
//  Created by 이승후 on 2022/02/08.
//

import UIKit

final class MovieViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var thumbnailimageView: UIImageView!
    @IBOutlet private weak var thumbnailLabel: UILabel!
    
    private let arrays = [
        ["IMG_8707", "영화이름", "김동팔"],
        ["IMG_8707", "영화이름2", "이동팔"],
        ["IMG_8707", "영화이름3", "최동팔"],
        ["IMG_8707", "영화이름4", "곽동팔"],
        ["IMG_8707", "영화이름5", "황동팔"]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MovieViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrays.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCell else {
            return UITableViewCell()
        }
        cell.updateUI(array: arrays[indexPath.row])
        return cell
    }

}
