//
//  ViewController.swift
//  ServicePractice
//
//  Created by 이승후 on 2022/03/20.
//

import UIKit
import SnapKit

final class HomeViewController: BaseViewController {
    
    private let button = UIButton()
    private let viewExample = UIView()
    private let button2 = UIButton()
    private let emojuView2 = EmojiView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //화면에 추가해주는 함수
    override func setViews() {
        super.setViews()
        view.addSubview(button)
        view.addSubview(viewExample)
        viewExample.addSubview(button2)
    }
    
    //제약 조건 잡아주는 함수
    override func setConstraints() {
        super.setConstraints()
        button.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
            make.width.height.equalTo(50)
        }
        
        viewExample.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.height.equalToSuperview().multipliedBy(0.2)
        }
        
        button2.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(50)
        }
    }
    
    //꾸며주는 함수
    override func setConfigurations() {
        super.setConfigurations()
        view.backgroundColor = .white
        title = "home"
        button.setTitle("버튼1", for: .normal)
        button.setTitle("선택", for: .selected)
        button.backgroundColor = .orange
        viewExample.backgroundColor = .yellow
        button2.setTitle("버튼2", for: .normal)
        button2.backgroundColor = .blue
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
    }
    
    @objc private func buttonTap() {
        let vc = DetailViewController()
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

