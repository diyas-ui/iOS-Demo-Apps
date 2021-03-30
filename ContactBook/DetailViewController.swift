//
//  DetailViewController.swift
//  ContactBook
//
//  Created by mac on 9/21/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var number_phone: String?
    var image: UIImage?
    var name_surname: String?
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userImage.image = image
        userName.text = name_surname
        userNumber.text = number_phone
    }
    
}
