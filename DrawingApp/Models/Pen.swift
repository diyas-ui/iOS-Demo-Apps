//
//  Pen.swift
//  DrawingApp
//
//  Created by mac on 10/2/20.
//  Copyright © 2020 mac. All rights reserved.
//
import UIKit

class Pen{
    
    let color: UIColor
    var points: [CGPoint]
    
    init(color: UIColor, points: [CGPoint]) {
        self.color = color
        self.points = points
    }
   
}
