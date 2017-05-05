//
//  TJProfileImage.swift
//  TJProfileImage
//
//  Created by Tejas Ardeshna on 02/05/17.
//  Copyright © 2017 Tejas Ardeshna. All rights reserved.
//

import UIKit
@IBDesignable class TJProfileImage:UIImageView {
    
    @IBInspectable var dashedBorder: Bool = false {
        didSet {
            self.setNeedsLayout()
        }
    }
    @IBInspectable var isCircular: Bool = false {
        didSet {
            self.setNeedsLayout()
        }
    }
    @IBInspectable var cornerRadious: CGFloat = 5 {
        didSet {
            self.setNeedsLayout()
        }
    }
    @IBInspectable var borderColor: UIColor = UIColor.blue {
        didSet {
            self.setNeedsLayout()
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layoutIfNeeded()
        self.applyProperties()
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.setNeedsDisplay()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setNeedsDisplay()
    }

    override func layoutSubviews() {
        self.applyProperties()
    }
    func applyProperties()
    {
        let shapeLayer:CAShapeLayer = CAShapeLayer()
        let frameSize = self.frame.size
        let shapeRect = CGRect(x: 0, y: 0, width: frameSize.width, height: frameSize.height)
        
        shapeLayer.bounds = shapeRect
        shapeLayer.position = CGPoint(x: frameSize.width/2, y: frameSize.height/2)
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = borderColor.cgColor
        shapeLayer.lineWidth = borderWidth
        shapeLayer.lineJoin = kCALineJoinRound
        if dashedBorder{
            shapeLayer.lineDashPattern = [6,3]
        }
        shapeLayer.path = UIBezierPath(roundedRect: shapeRect, cornerRadius: isCircular ? CGFloat(self.frame.size.height / 2.0) :  cornerRadious).cgPath
        self.layer.cornerRadius = isCircular ? CGFloat(self.frame.size.height / 2.0) :  cornerRadious
        self.layer.masksToBounds = true
        self.layer.addSublayer(shapeLayer)
        //self.layer.insertSublayer(shapeLayer, at: 0)
    }
    
}
