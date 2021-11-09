//
//  PeopleViewController.swift
//  app13
//
//  Created by administrator on 20/10/2021.
//

import UIKit

class PeopleViewController: UIViewController {
    
    var name: String = ""
    var mess : String = ""
    var birth_year : String = ""
    var gender : String = ""
    @IBOutlet weak var Namelbl: UILabel!
    
    @IBOutlet weak var gendrlbl: UILabel!
    @IBOutlet weak var yearBithlbl: UILabel!
    @IBOutlet weak var masslbl: UILabel!
    override func viewDidLoad() {
        print("hh")
        super.viewDidLoad()
        Namelbl.text = name
        masslbl.text = mess
        yearBithlbl.text = birth_year
        gendrlbl.text = gender
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
