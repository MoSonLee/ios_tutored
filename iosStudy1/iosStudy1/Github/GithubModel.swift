//
//  GithubModel.swift
//  iosStudy1
//
//  Created by 이승후 on 2022/01/25.
//

import Foundation

struct GithubModel: Decodable {
    let id: Int
    let name: String
    let description: String?
    let stargazersCount: Int
    let language: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name, description, language
        case stargazersCount = "stargazers_count"
    }
}
