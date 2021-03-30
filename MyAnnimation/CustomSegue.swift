//
//  CustomSegue.swift
//  MyAnnimation
//
//  Created by mac on 11/17/20.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    
    
   
    
    override func perform() {
        scale()
    }
    func scale(){
        
    
        //segue
        let toViewController = self.destination
        let fromViewController = self.source
    
      
        let containerView = fromViewController.view.superview
        let originalCenter = fromViewController.view.center
        
        toViewController.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        toViewController.view.center = originalCenter
        
        containerView?.addSubview(toViewController.view)
        
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseIn, animations: {
            toViewController.view.transform = CGAffineTransform.identity
            fromViewController.view.alpha = 0
        }, completion: { success in
            fromViewController.present(toViewController, animated: false, completion: nil)
        })
        
        
        
            
        
        
        
        
        
        
    }
    
}
