//
//  Triangle.swift
//  DrawingApp
//
//  Created by mac on 10/2/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit


class Triangle{
    private var p1: CGPoint
    private var p2: CGPoint
    private var p3: CGPoint
    private var color: UIColor
    private var isFilled: Bool
    
    init(p1:CGPoint, p2:CGPoint, p3:CGPoint,color:UIColor, isFilled: Bool) {
        self.color = color
        self.p1 = p1
        self.p2 = p2
        self.isFilled = isFilled
        self.p3 = p3
    }
    func drawPath(){
        let path = UIBezierPath()
        path.move(to: p1)
        path.addLine(to: p2)
        path.addLine(to: p3)
        path.lineWidth = 4
        color.set()
        (isFilled) ? (path.fill()) : (path.stroke())
    }
}
