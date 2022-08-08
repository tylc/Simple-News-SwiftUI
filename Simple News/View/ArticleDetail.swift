//
//  ArticleDetail.swift
//  Simple News
//
//  Created by Enric Herce on 1/8/22.
//

import SwiftUI

struct ArticleDetail: View {
    var article: Article

    var body: some View {
        VStack{
            Text(article.title ?? "empty title")
                .font(.title)
            Text(article.description ?? "empty description")
                .font(.body)
                .padding()
            Spacer()
        }
    }
}

struct ArticleDetail_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetail(article: Article(title: "Test Article", description: "Description article test"))
    }
}
