//
//  CustomCell.swift
//  ContactBook
//
//  Created by mac on 9/20/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userNumber: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
