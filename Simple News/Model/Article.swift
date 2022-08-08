//
//  Article.swift
//  Simple News
//
//  Created by Enric Herce on 27/7/22.
//

import Foundation

struct ArticleList: Decodable{
    var articles: [Article]?
}

struct Article: Decodable, Hashable{
    var title: String?
    var description: String?
}
