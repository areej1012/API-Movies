//
//  filmViewController.swift
//  app13
//
//  Created by administrator on 16/10/2021.
//

import UIKit
import Alamofire

class filmViewController: UITableViewController {
    
    var Film : Films?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        StarWarsModel.getAllFilm {films in
            DispatchQueue.main.async {
                self.Film = films
                self.tableView.reloadData()
            
            }}
            
        
   /*     StarWarsModel.getAllFilm{ MyModel in
            DispatchQueue.main.async {
                print("Here ")
                self.MyModel = MyModel
                self.tableView.reloadData()
            }
            
        }*/
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // return the count of people in our data array
        return Film?.results.count ?? 0
       }
  

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text =  Film?.results[indexPath.row].title
        
        // Configure the cell...

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let desV = storyboard?.instantiateViewController(identifier: "film") as! FilmDetailsViewController
        desV.titleFilm = (Film?.results[indexPath.row].title)!
        desV.dict = (Film?.results[indexPath.row].director)!
        desV.open = (Film?.results[indexPath.row].opening_crawl)!
        desV.dateFilm = (Film?.results[indexPath.row].release_date)!
        
        self.navigationController?.pushViewController(desV, animated: true)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
