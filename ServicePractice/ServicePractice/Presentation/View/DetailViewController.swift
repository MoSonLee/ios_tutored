//
//  DetailViewController.swift
//  ServicePractice
//
//  Created by 이승후 on 2022/03/20.
//

import UIKit

final class DetailViewController: BaseViewController {
    
    private let tableView = UITableView(frame: .zero, style: .insetGrouped)
    private lazy var completeBarButton = UIBarButtonItem(
        title: "완료",
        style: .plain,
        target: self, //객체 생성할 때 self가 쓰이면 lazy var로 선언해야한다.
        action: #selector(completedBarButtonTap)
    )
    private let imageBarButton = UIBarButtonItem()
    
    
    private let descriptionArray = [
        "hello",
        "hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello",
        "hellohellohellohello",
        "hellohellohellohellohello",
        "hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello"
    ]
    
    private let emojiArray = [
        "🌱",
        "⭐️",
        "💫",
        "🐍",
        "📲"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setViews() {
        super.setViews()
        view.addSubview(tableView)
    }
    
    override func setConstraints() {
        super.setConstraints()
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    override func setConfigurations() {
        super.setConfigurations()
        title = "디테일 뷰"
        navigationItem.rightBarButtonItems = [completeBarButton, imageBarButton]
        completeBarButton.title = "완료"
        imageBarButton.image = UIImage(systemName: "star.fill")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DetailCell.self, forCellReuseIdentifier: DetailCell.identifier)
    }
    
    @objc private func completedBarButtonTap() {
        self.navigationController?.popViewController(animated: true)
    }
}

extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return descriptionArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailCell.identifier, for: indexPath) as? DetailCell else {
            return UITableViewCell()
        }
        cell.configure(title: descriptionArray[indexPath.row], emoji: emojiArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return DetailCell.height
    }
}
