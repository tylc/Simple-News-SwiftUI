//
//  ArticleListViewModel.swift
//  Simple News
//
//  Created by Enric Herce on 27/7/22.
//

import Foundation

protocol ArticleListViewModelInputs {
    
}

protocol ArticleListViewModelOutputs {
    func numerOfItems() -> Int
    func item(at index: Int) -> Article?
}

class ArticleListViewModel: ArticleListViewModelInputs, ArticleListViewModelOutputs, ObservableObject {
    var inputs: ArticleListViewModelInputs { return self }
    var outputs: ArticleListViewModelOutputs { return self }
    
    var articlesWebservice: ArticlesWebservice = ArticlesWebservice()
    var newsURL: URL = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=6254179521894bb7a31014d2efe17555")!
    
    @Published var articleList: ArticleList = ArticleList()
    
    init(){
        articlesWebservice.getArticles(url: newsURL,
                                       successFetch: {
            articleList in
            self.articleList.articles = articleList
            
        },errorFetch:{
            error in print (error)
        })
    }
    
    func numerOfItems() -> Int {
        return 1
    }
    
    func item(at index: Int) -> Article? {
        return nil
    }
}

