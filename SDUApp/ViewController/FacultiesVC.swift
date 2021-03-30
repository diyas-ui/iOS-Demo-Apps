//
//  FacultiesVC.swift
//  SDUApp
//
//  Created by mac on 10/22/20.
//

import UIKit

class FacultiesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let faculties = [Faculties.init("Business school", UIImage(named: "1")!),
                     Faculties.init("Engineering", UIImage(named: "2")!),
                     Faculties.init("Education & Humanities", UIImage(named: "3")!),
                     Faculties.init("Law & Social Sciences", UIImage(named: "4")!)
                    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return faculties.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FacultiesCell") as? FacultiesCell
        cell?.nameTitle.text = faculties[indexPath.row].faculties
        cell?.imageCell.image = faculties[indexPath.row].image
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Faculties"
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
