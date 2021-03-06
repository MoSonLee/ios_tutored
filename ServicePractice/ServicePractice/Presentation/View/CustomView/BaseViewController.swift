//
//  BaseViewController.swift
//  ServicePractice
//
//  Created by 이승후 on 2022/03/20.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConfigurations()
        setViews()
        setConstraints()
    }
    
    func setViews() { }
    func setConstraints() { }
    
    func setConfigurations() {
        view.backgroundColor = .systemBackground
        navigationItem.backButtonTitle = ""
    }
}
