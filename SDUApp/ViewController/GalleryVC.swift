//
//  GalleryVC.swift
//  SDUApp
//
//  Created by mac on 10/21/20.
//

import UIKit

class GalleryVC: UIViewController {

    @IBOutlet weak var scrollImage: UIScrollView!
    var imageArray = [UIImage]()
    override func viewDidLoad() {
        navigationItem.title = "Gallery"
        scrollImage.frame = view.frame
        imageArray = [UIImage(named: "0")!,UIImage(named: "download")!,UIImage(named: "download-1")!,UIImage(named: "download")!,UIImage(named: "images")!,UIImage(named: "images-1")!]
        
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width*CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.scrollImage.frame.width, height: self.scrollImage.frame.height)
            
            scrollImage.contentSize.width = scrollImage.frame.width * CGFloat(i + 1)
            scrollImage.addSubview(imageView)
            
        }
    }

}
