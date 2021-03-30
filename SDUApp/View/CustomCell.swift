//
//  CustomCell.swift
//  SDUApp
//
//  Created by mac on 10/19/20.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var viewCell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
