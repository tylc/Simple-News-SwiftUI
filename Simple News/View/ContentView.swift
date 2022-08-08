//
//  ContentView.swift
//  Simple News
//
//  Created by Enric Herce on 27/7/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ArticleListViewModel = ArticleListViewModel()
    
    var body: some View {
        
        NavigationStack{
            VStack {
                List {
                    ForEach(viewModel.articleList.articles ?? [], id: \.self) {
                        article in
                        
                        NavigationLink(value:article){
                            ArticleCellView(article: article)
                            
                        }
                    }
                }
            }
            .navigationTitle("Simple News")
            //.toolbarBackground(.red, in: .navigationBar)
            .navigationDestination(for: Article.self) { article in
                ArticleDetail(article: article)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
