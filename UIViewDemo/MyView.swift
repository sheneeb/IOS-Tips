//
//  MyView.swift
//  UIViewDemo
//
//  Created by Steven Lipton on 9/18/18.
//  Copyright © 2018 Steven Lipton. All rights reserved.
//

import UIKit

let rect1 = CGRect(x: 300, y: 300, width: 200, height: 150)
let rect2 = CGRect(x: 10, y: 10, width: 300, height: 200)


class MyView:UIView {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        let imageView = UIImageView(image: #imageLiteral(resourceName: "gradient.jpg"))
        imageView.frame = frame
        addSubview(imageView)
        let imagerenderer = UIGraphicsImageRenderer(size: frame.size)
        let image = imagerenderer.image(actions:  { (context) in
            UIColor.orange.setFill()
            UIColor.darkGray.setStroke()
            context.fill(rect1)
            context.stroke(rect2)
            
            UIColor.purple.setStroke()
            context.cgContext.setLineWidth(15)
            context.cgContext.strokeEllipse(in: rect1)
            context.cgContext.fillEllipse(in: rect2)
            
        })
        addSubview(UIImageView(image: image))
    }
}
