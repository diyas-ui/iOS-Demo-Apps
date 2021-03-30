//
//  FirstPageVCViewController.swift
//  MyAnnimation
//
//  Created by mac on 11/17/20.
//

import UIKit

class FirstPageVCViewController: UIViewController {
    
    
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    
    
    @IBOutlet weak var nextButtom: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButtom.layer.cornerRadius = 10
        nextButtom.layer.borderWidth = 1.5
        nextButtom.layer.borderColor = UIColor.white.cgColor
        nextButtom.clipsToBounds = true
        
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        textField1.center.x = self.view.frame.width + 50
        UIView.animate(withDuration: 1.0, delay: 00, usingSpringWithDamping: 1.0 , initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {
            self.textField1.center.x = self.view.frame.width / 2
        }, completion: nil)
        textfield2.center.x = self.view.frame.width - 400
        UIView.animate(withDuration: 1.0, delay: 00, usingSpringWithDamping: 1.0 , initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {
            self.textfield2.center.x = self.view.frame.width / 2
        }, completion: nil)
        nextButtom.alpha = 0
        UIView.animate(withDuration: 2.0, animations: {
            self.nextButtom.alpha = 1
        }, completion: nil)

            
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1.0, delay: 00, usingSpringWithDamping: 1.0 , initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {
            self.textField1.center.x = self.view.frame.width + 50
        }, completion: nil)
        
        UIView.animate(withDuration: 1.0, delay: 00, usingSpringWithDamping: 1.0 , initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {
            self.textfield2.center.x = self.view.frame.width  - 400
        }, completion: nil)
        
    }
}
