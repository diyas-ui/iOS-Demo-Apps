//
//  CustomCell.swift
//  MyAnnimation
//
//  Created by mac on 11/17/20.
//

import UIKit

class CustomCell: UITableViewCell {
    
   
    let tableVC = TableViewController()
    @IBOutlet weak var typePhoneLabel: UILabel!
    @IBOutlet weak var pricePhoneLabel: UILabel!
    
    @IBOutlet weak var pixelDetailLabel: UILabel!
    @IBOutlet weak var programDetailLabel: UILabel!
    
    
    @IBOutlet weak var flipView: UIView!
    @IBOutlet weak var normalView: UIView!
    
    
    @IBOutlet weak var hideButtom: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        hideButtom.layer.cornerRadius = 10
        hideButtom.layer.borderWidth = 1.5
        hideButtom.layer.borderColor = UIColor.white.cgColor
        hideButtom.clipsToBounds = true
    }
    
    func updateDetail(detail: Type){
        programDetailLabel.text = detail.program
        pixelDetailLabel.text = detail.pixel
    }
    
    @IBAction func flipButtonAction(_ sender: UIButton) {
        
        UIView.transition(with: contentView, duration: 1.0,
                                  options: .transitionFlipFromRight ,
                                  animations: { 
                        
                                    self.contentView.insertSubview(self.normalView, at: 0)
                                    self.normalView.alpha = 0
                                    self.flipView.alpha = 1
                                  }, completion: nil)
                                    
       
    }
    
    @IBAction func hideButtonAction(_ sender: UIButton) {
        
        
        
        
        UIView.animate(withDuration: 1.0, delay: 00, usingSpringWithDamping: 1.0 , initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {
            self.flipView.center.x = self.contentView.frame.width + 100
            self.contentView.insertSubview(self.normalView, at: 0)
            self.flipView.alpha = 0
            self.normalView.alpha = 1
        }, completion: nil)
    }
    
}
