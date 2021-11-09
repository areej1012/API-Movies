//
//  StarWarsModel.swift
//  app13
//
//  Created by administrator on 17/10/2021.
//

import Foundation


import Alamofire
class StarWarsModel {
    // Note that we are passing in a function to the getAllPeople method (similar to our use of callbacks in JS). This function will allow the ViewController that calls this method to dictate what runs upon completion.
    static func getAllPeople(completionHandler:@escaping (_ data: People?) -> Void) {
        // Specify the url that we will be sending the GET Request to
        
        AF.request("https://swapi.dev/api/people/?format=json") .validate()
            .responseDecodable(of: People.self) { (pepole) in
              guard let person = pepole.value else { return }
              
              completionHandler(person)
          }
        
    }
    
    
    static func getAllFilm(completionHandler:@escaping (_ data: Films?) -> Void) {
        // Specify the url that we will be sending the GET Request to
        AF.request("https://swapi.dev/api/films/?format=json")
          .validate()
          .responseDecodable(of: Films.self) { (response) in
            guard let films = response.value else { return }
            
            completionHandler(films)
        }
      
    }
    
}
