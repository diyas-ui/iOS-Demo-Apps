//
//  MainTableVC.swift
//  SDUApp
//
//  Created by mac on 10/19/20.
//

import UIKit

class MainTableVC: UITableViewController {
    
    let informer = [Informer.init("Faculties"),
                     Informer.init("Clubs"),
                     Informer.init("News"),
                     Informer.init("Contacts"),
                     Informer.init("Gallery")
                    ]
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "SDU"
        myTableView.showsVerticalScrollIndicator = false
        myTableView.isScrollEnabled = false
    
    
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return informer.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as? CustomCell
        cell?.infoLabel.text = informer[indexPath.row].infoTitle
        cell?.viewCell.layer.cornerRadius = (cell?.viewCell.frame.height)! / 2
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row{
        case 0:
            let facultiesVC = storyboard?.instantiateViewController(withIdentifier: "FacultiesVC") as! FacultiesVC
            navigationController?.pushViewController(facultiesVC, animated: true)
        case 1:
            let clubsVC = storyboard?.instantiateViewController(withIdentifier: "ClubsVC") as! ClubsVC
            navigationController?.pushViewController(clubsVC, animated: true)
        case 2:
            let newsVC = storyboard?.instantiateViewController(withIdentifier: "NewsVC") as! NewsVC
            navigationController?.pushViewController(newsVC, animated: true)
        case 3:
            let contactVC = storyboard?.instantiateViewController(withIdentifier: "ContactVC") as! ContactVC
            navigationController?.pushViewController(contactVC, animated: true)
        case 4:
            let galleryVC = storyboard?.instantiateViewController(withIdentifier: "GalleryVC") as! GalleryVC
            navigationController?.pushViewController(galleryVC, animated: true)
    
        default:
            print("Default")
        }
        
        myTableView.deselectRow(at: indexPath, animated: true)
        
        
            
        }
}



