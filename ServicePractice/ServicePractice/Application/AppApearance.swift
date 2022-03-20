//
//  AppApearance.swift
//  ServicePractice
//
//  Created by 이승후 on 2022/03/20.
//

import UIKit

final class AppAppearance {

    static func setupAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.backgroundColor = .systemBackground
        appearance.titleTextAttributes = [.foregroundColor: UIColor.label]
        
        let backImage = UIImage(systemName: "arrow.left") // 디자이너가 원하는 백버튼 이미지를 넣어주자.
        appearance.setBackIndicatorImage(backImage, transitionMaskImage: backImage)
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().tintColor = .label
        UINavigationBar.appearance().barTintColor = .label
    }
}
