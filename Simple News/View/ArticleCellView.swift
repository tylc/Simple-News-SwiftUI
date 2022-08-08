//
//  ArticleCellView.swift
//  Simple News
//
//  Created by Enric Herce on 1/8/22.
//

import SwiftUI

struct ArticleCellView: View {
    var article: Article

    var body: some View {
        VStack(alignment: .leading){
            Text(article.title ?? "no title")
                .font(.headline)
            Spacer()
            Text(article.description ?? "no description")
                .font(.caption)
            
            Spacer()

        }
    }
}

struct ArticleCellView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCellView(article: Article(title: "test title", description: "test description"))
    }
}
