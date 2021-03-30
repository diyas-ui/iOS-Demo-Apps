//
//  SaveViewController.swift
//  ContactBook
//
//  Created by mac on 9/22/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

enum Gender {
    case male
    case female
}

protocol CreateUserProtocol {
    func createUser(nameSurname: String, phoneNumber: String, gender: Gender)
}


class SaveViewController: UIViewController, UIPickerViewDelegate {
    var myProtocol: CreateUserProtocol?
    let vc = ViewController()

    @IBOutlet weak var choosePickerGender: UIPickerView!
    @IBOutlet weak var contactNameSurname: UITextField!
    @IBOutlet weak var contactNumber: UITextField!
    
    var genderArray = ["male", "female"]
    var gender : Gender = .male
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactNameSurname.delegate = self
        contactNumber.delegate = self
        choosePickerGender.delegate = self
        choosePickerGender.dataSource = self
        // Do any additional setup after loading the view.
            }
    
    @IBAction func saveContact(_ sender: UIButton) {
        myProtocol?.createUser(nameSurname: contactNameSurname.text!, phoneNumber: contactNumber.text!, gender: gender)
        navigationController?.popViewController(animated: true)
        print(vc.user.count)
    }
    
}
extension SaveViewController : UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genderArray.count
    }
    
}
extension SaveViewController: UITableViewDelegate{
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let result = genderArray[row]
        if result == "male"{
            gender = .male
        } else {
            gender = .female
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genderArray[row]
    }

    
}
extension SaveViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        contactNameSurname.resignFirstResponder()
        contactNumber.resignFirstResponder()
        return true
    }

}
