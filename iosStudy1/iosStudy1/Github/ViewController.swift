//
//  ViewController.swift
//  iosStudy1
//
//  Created by 이승후 on 2022/01/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private var githubName = "BlackBerry"
    private lazy var url = URL(string: "https://api.github.com/orgs/\(self.githubName)/repos")
    
    private var githubArray = [GithubModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = githubName
        tableView.delegate = self
        tableView.dataSource = self
        apiRequest()
    }
    
    private func apiRequest() {
        URLSession.shared.dataTask(with: self.url!) { data, response, error in
            guard let data = data else {
                print("error")
                return
            }
            print("-->\(data)")
            
            let result = try? JSONDecoder().decode([GithubModel].self, from: data)
            print(result)
            self.githubArray = result!
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }.resume()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return githubArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GithubTableViewCell", for: indexPath) as? GithubTableViewCell else {
            return UITableViewCell()
        }
        cell.titleLabel.text = githubArray[indexPath.row].name
        cell.contentLabel.text = (githubArray[indexPath.row].description ?? "")
        cell.starCountLabel.text = "\(githubArray[indexPath.row].stargazersCount)"
        cell.languageLabel.text = (githubArray[indexPath.row].language ?? "")
        return cell
    }
}
