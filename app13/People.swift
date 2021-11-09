//
//  People.swift
//  app13
//
//  Created by administrator on 19/10/2021.
//

import Foundation

struct People: Codable {
  let count: Int
  let results: [person]
  

}

struct person : Codable {
    let name: String
    let mass : String
    let birth_year : String
    let gender : String
}

enum Gender : String , Codable {
    case female = "female"
    case male = "male"
    case nA = "N/A"

}

