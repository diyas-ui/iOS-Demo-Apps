//
//  TableViewController.swift
//  MyAnnimation
//
//  Created by mac on 11/16/20.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    let phones = [Phones.init("iPhone 7 Plus", "350$"),
                  Phones.init("Samsung Galaxy s8", "500$"),
                  Phones.init("LG G4", "400$"),
                  Phones.init("Nexus 6p", "700$"),
                  Phones.init("HTC One M9", "500$"),
                  Phones.init("Google Pixel", "650$")
                 ]
    var type: [Type] = []
    
    
    func detailPhone(){
        let first = Type.init("A10 Fusion", "12MPX")
        let second = Type.init("Snapdragon 123", "500MPX")
        let third = Type.init("Snapdragon 8012",  "16MPX")
        let four = Type.init("Snapdragon 806",  "26MPX")
        let five = Type.init("Snapdragon 809",  "146MPX")
        let six = Type.init("Snapdragon 810",  "116MPX")
        type.append(contentsOf: [first,second,third,four,five,six])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        detailPhone()
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return phones.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? CustomCell
        
       
        cell?.updateDetail(detail: type[indexPath.row])
        cell?.typePhoneLabel.text = phones[indexPath.row].typePhone
        cell?.pricePhoneLabel.text = phones[indexPath.row].pricePhone
            
        
        return cell!
        
            
        
        
       
        // Configure the cell...

        
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.transform = CGAffineTransform(translationX: 0, y: cell.contentView.frame.height)
        
        UIView.animate(withDuration: 1.5, delay: 0.05 * Double(indexPath.row),  animations: {
            cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width , y: cell.contentView.frame.height)
        })
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
