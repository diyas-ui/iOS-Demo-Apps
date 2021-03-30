//
//  ViewController.swift
//  ContactBook
//
//  Created by mac on 9/20/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit


class ViewController: UIViewController{
    var user = [User.init("Waysa Pupkin","+13123123",UIImage.init(named: "male")!),
                User.init("Cristiano Ronaldo", "+7213123123", UIImage.init(named: "male")!)
                ]
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
    
  
    
    @IBAction func addContact() {
        let saveVC = self.storyboard?.instantiateViewController(withIdentifier: "SaveViewController") as! SaveViewController
        saveVC.myProtocol = self
        saveVC.title = "New Contact"
        navigationController?.pushViewController(saveVC, animated: true)
        
        }
 
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let index = (myTableView.indexPathForSelectedRow?.row)!
        //let destination = segue.destination as! DetailViewController
        //destination.image = user[index].image
        //destination.name_surname = user[index].name_surname
        //destination.number_phone = user[index].number
    //}
}
extension ViewController : CreateUserProtocol {
    func createUser(nameSurname: String, phoneNumber: String, gender: Gender) {
        let newContact = User.init(nameSurname, phoneNumber, gender == .male ?
            UIImage.init(named: "male")! : UIImage.init(named: "female")!)
        self.user.append(newContact)
        myTableView.reloadData()
        
    }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as? CustomCell
        cell?.userName.text = user[indexPath.row].name_surname
        cell?.userNumber.text = user[indexPath.row].number
        cell?.userImage.image = user[indexPath.row].image
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = (myTableView.indexPathForSelectedRow?.row)!
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        navigationController?.pushViewController(detailVC, animated: true)
        detailVC.image = user[index].image
        detailVC.name_surname = user[index].name_surname
        detailVC.number_phone = user[index].number
        myTableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            user.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
 
    }
}
