//
//  ViewController.swift
//  app13
//
//  Created by administrator on 14/10/2021.
//

import UIKit
import Alamofire
class ViewController: UITableViewController  {
    var people : [String] = []
    var Pepole : People?
    var path : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        StarWarsModel.getAllPeople {people in
            DispatchQueue.main.async {
                self.Pepole = people
                self.tableView.reloadData()
            
            }}
        
             
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // return the count of people in our data array
      
        return Pepole?.results.count ?? 0
       }
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           // Create a generic cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
           // set the default cell label to the corresponding element in the people array
        cell.textLabel?.text = Pepole?.results[indexPath.row].name
           return cell
       }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let desV = storyboard?.instantiateViewController(identifier: "People") as! PeopleViewController
        print(indexPath.row)
        print(Pepole!.results[indexPath.row].gender)
        desV.name = (Pepole?.results[indexPath.row].name)!
        desV.mess = (Pepole?.results[indexPath.row].mass)!
        desV.birth_year = (Pepole?.results[indexPath.row].birth_year)!
        desV.gender = (Pepole?.results[indexPath.row].gender)!
        
        self.navigationController?.pushViewController(desV, animated: true)
    }
    
    
}

