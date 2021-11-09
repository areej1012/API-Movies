//
//  Films.swift
//  app13
//
//  Created by administrator on 19/10/2021.
//

import Foundation
struct Films: Decodable {
  let count: Int
  let results: [Film]
  

}

struct Film : Decodable {
    let title: String
    let opening_crawl: String
    let director : String
    let release_date: String 
}
