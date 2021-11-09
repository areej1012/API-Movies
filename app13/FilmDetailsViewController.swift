//
//  FilmDetailsViewController.swift
//  app13
//
//  Created by administrator on 09/11/2021.
//

import UIKit

class FilmDetailsViewController: UIViewController {

   
    @IBOutlet weak var director: UILabel!
    @IBOutlet weak var opening: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var Titlelbl: UILabel!
    
    
    var titleFilm: String = ""
    var dict : String = ""
    var open : String = ""
    var dateFilm : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        Titlelbl.text = titleFilm
        director.text = dict
        date.text = dateFilm
        opening.text = open
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
