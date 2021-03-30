//
//  Circle.swift
//  DrawingApp
//
//  Created by mac on 10/2/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class Circle {
    private var radius: CGFloat
    private var circleCenter: CGPoint
    private var color: UIColor
    private var strokeWidth: CGFloat
    private var isFilled: Bool
    
    init(with radius: CGFloat, and circleCenter: CGPoint, withSome color: UIColor,and strokeWidth: CGFloat, isFilled: Bool) {
        self.radius = radius
        self.circleCenter = circleCenter
        self.color = color
        self.strokeWidth = strokeWidth
        self.isFilled = isFilled
    }
    func drawPath(){
        let path = UIBezierPath(arcCenter: circleCenter,
                                radius: radius,
                                startAngle: 0,
                                endAngle: 2*Double.pi.cg,
                                clockwise: true)
        path.lineWidth = strokeWidth
        color.set()
        (isFilled) ? (path.fill()) : (path.stroke())
    }
}
extension Double{
    var cg: CGFloat{
        return CGFloat(self)
    }
}


