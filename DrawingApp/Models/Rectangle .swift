//
//  Rectangle .swift
//  DrawingApp
//
//  Created by mac on 10/2/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class Rectangle {
    private var p1 : CGPoint
    private var p2 : CGPoint
    private var color: UIColor
    private var stroke_width: CGFloat = 0.0
    private var isFilled: Bool
    
    init(p1: CGPoint, p2: CGPoint, color : UIColor, stroke_width: CGFloat, isFilled: Bool) {
        self.color = color
        self.isFilled = isFilled
        self.p1 = p1
        self.p2 = p2
        self.stroke_width = stroke_width
    }
    
    func drawPath(){
        let rect = CGRect(origin: p1, size: CGSize(width: abs(p2.x - p1.x), height: abs(p2.y - p2.x)))
        let path = UIBezierPath(rect: rect)
        path.lineWidth = stroke_width
        color.set()
        (isFilled) ? (path.fill()) : (path.stroke())
    }
}


