//
//  CustomView.swift
//  DrawingApp
//
//  Created by mac on 10/2/20.
//  Copyright © 2020 mac. All rights reserved.
//
import UIKit

class CustomView: UIView {
    var point1: CGPoint?
    var point2: CGPoint!
    
    var tags = 0
    var button = UIButton()
    var strokeColor = UIColor.black
    
    @IBOutlet weak var circleButton: UIButton!
    @IBOutlet weak var rectButton: UIButton!
    @IBOutlet weak var lineButton: UIButton!
    @IBOutlet weak var triangleButton: UIButton!
    @IBOutlet weak var penButton: UIButton!
    @IBOutlet weak var fillSwitch: UISwitch!
    
    
    @IBAction func buttonAction(_ sender: UIButton) {
        tags = sender.tag
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        _ = lines.popLast()
        setNeedsDisplay()
    }
    
    @IBAction func colorChange(_ sender: UIButton) {
        button.backgroundColor = sender.backgroundColor
        strokeColor(color: sender.backgroundColor!)
    }
    
    func strokeColor(color: UIColor){
        self.strokeColor = color
        }
    
    override func draw(_ rect: CGRect) {
        if let p1 = point1 {
            if tags == circleButton.tag {
                let circle = Circle(with: abs(point2.x - p1.x), and: p1, withSome: button.backgroundColor!, and: 4, isFilled: (fillSwitch.isOn) ? true : false)
                circle.drawPath()
            } else if tags == rectButton.tag {
                let rect = Rectangle.init(p1: p1, p2: point2, color: button.backgroundColor!, stroke_width: 4, isFilled: (fillSwitch.isOn) ? true : false)
                rect.drawPath()
            } else if tags == lineButton.tag {
                let line1 = Line(p1: p1, p2: point2, color: button.backgroundColor!)
                line1.drawPath()
            } else if tags == triangleButton.tag {
                let triangle = Triangle(p1: p1, p2: point2, p3: CGPoint(x: p1.x, y: point2.y), color: button.backgroundColor!, isFilled: (fillSwitch.isOn) ? true : false)
                triangle.drawPath()
            } else if tags == penButton.tag {
                drawWithPen()
            }
        }
    }
    
    func drawWithPen() {
        let path = UIBezierPath()
        strokeColor.set()
        path.lineWidth = 10
        
        lines.forEach { (line) in
            
            for (i, p) in line.points.enumerated() {
                if i == 0 {
                    path.move(to: p)
                } else {
                    path.addLine(to: p)
                }
            }
        }
        path.stroke()
    }
    
    var lines = [Pen]()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            point1 = touch.location(in: self)
        }
        lines.append(Pen.init(color: strokeColor, points: []))
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: nil) else {return}
        guard let lastLine = lines.popLast() else { return }
        lastLine.points.append(point)
        lines.append(lastLine)
        point2 = lastLine.points.first
        setNeedsDisplay()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            point2 = touch.location(in: self)
        }
        setNeedsDisplay()
    }
}
