//
//  ViewController.swift
//  CAShapeLayer_UIBezierPath
//
//  Created by 汪俊 on 2017/1/13.
//  Copyright © 2017年 Codans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 125, y: 100))
        path.addArc(withCenter: CGPoint(x: 150, y: 100), radius: 25, startAngle: CGFloat(M_PI), endAngle: 2.0*CGFloat(M_PI), clockwise: true)
        path.addArc(withCenter: CGPoint(x: 200, y: 100), radius: 25, startAngle: CGFloat(M_PI), endAngle: 2.0*CGFloat(M_PI), clockwise: true)
        path.addLine(to: CGPoint(x: 175, y: 175))
        path.addLine(to: CGPoint(x: 125, y: 100))
        

        
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.lineJoin = kCALineJoinRound
        shapeLayer.lineCap = kCALineCapRound   // 对接截面
        shapeLayer.path = path.cgPath
        
        self.view.layer.addSublayer(shapeLayer)
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 4.0
        animation.repeatCount = 1
        animation.isRemovedOnCompletion = false
        animation.fillMode = kCAFillModeForwards
        shapeLayer.add(animation, forKey: "DonutScaleView")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

