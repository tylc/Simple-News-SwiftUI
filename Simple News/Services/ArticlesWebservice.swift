//
//  ArticlesWebservice.swift
//  Simple News
//
//  Created by Enric Herce on 27/7/22.
//

import Foundation

struct ArticlesWebservice {
    func getArticles (url: URL,
                      successFetch:@escaping ([Article]?)->() ,
                      errorFetch:@escaping (String)->()){
        
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            if let data {
                if let articleList: ArticleList = try? JSONDecoder().decode(ArticleList.self, from: data) {
                    print(articleList)
                    successFetch(articleList.articles)
                }
            } else {
                if let error {
                    errorFetch(error.localizedDescription)
                } else {
                    errorFetch("Uncaught error")
                }
            }
        })
        .resume()
        //equivalent si només hi ha un completion: URLSession.shared.dataTask(with: url){ data, response, error in
    }
}


// truc per analitzar respostes i trobar errors ràpidament
/*
 do {
 let decoder = JSONDecoder()
 let messages = try decoder.decode(ArticleList.self, from: data)
 print(messages as Any)
 } catch DecodingError.dataCorrupted(let context) {
 print(context)
 } catch DecodingError.keyNotFound(let key, let context) {
 print("Key '\(key)' not found:", context.debugDescription)
 print("codingPath:", context.codingPath)
 } catch DecodingError.valueNotFound(let value, let context) {
 print("Value '\(value)' not found:", context.debugDescription)
 print("codingPath:", context.codingPath)
 } catch DecodingError.typeMismatch(let type, let context) {
 print("Type '\(type)' mismatch:", context.debugDescription)
 print("codingPath:", context.codingPath)
 } catch {
 print("error: ", error)
 }
 */
