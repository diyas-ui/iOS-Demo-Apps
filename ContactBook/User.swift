//
//  User.swift
//  ContactBook
//
//  Created by mac on 9/21/20.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation
import UIKit

class User {
    var name_surname: String?
    var number: String?
    var image: UIImage?
    init(_ name_surname: String, _ number: String, _ image: UIImage) {
        self.name_surname = name_surname
        self.number = number
        self.image = image
    }
}
