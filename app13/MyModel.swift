//
//  MyModel.swift
//  app13
//
//  Created by administrator on 18/10/2021.
//

import Foundation


struct MyModel: Decodable  {
    let count : Int
    let results : [Result]
}

struct Result : Decodable  {
    let name, birth_year, mess : String
    let gender : Gander
    
}

enum Gander : String , Decodable  {
    case female = "female"
    case male = "male"
    case nA = "n/a"
}
