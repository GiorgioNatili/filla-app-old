//
//  UIButtonExtension.swift
//  SignMyPad
//
//  Created by Giorgio Natili on 5/9/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import UIKit

extension UIButton {
    
    func addIcon (name:String, leftMargin:CGFloat = 10.0) {
        
        let icon = UIImage(named: name) as UIImage?
        let (w, h) = (icon?.size.width, icon?.size.height)
        let y = (self.frame.height - h!) / 2
        
        let iconImageView = UIImageView(image: icon!)
        iconImageView.frame = CGRect(x: leftMargin, y: y, width: w!, height: h!)
        
        let currentLabel:String! = titleLabel?.text
        
        positionLabelRespectToImage(spacing: 10.0, position: iconImageView.frame)
        addSubview(iconImageView)
        
    }
    
    private func positionLabelRespectToImage(#spacing: CGFloat, position: CGRect) {
     
        let left = position.origin.x + position.width + spacing
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: left, bottom: 0, right: 0)
        
    }
    
    private func updateLabelFrame(view:UIImageView) {
        
        let currentFrame = titleLabel?.frame
        
        let x = view.frame.origin.x + view.frame.width
        let y = currentFrame!.origin.y
        let w = frame.width - view.frame.width
        let h = currentFrame!.height
        
        var titleInsets: UIEdgeInsets = UIEdgeInsets(top: x, left: y, bottom: 0, right: 0)
        self.titleEdgeInsets = titleInsets
        //let updatedFrame = CGRect (x: 60, y: y, width: w, height: h)
        
        //titleLabel?.frame = updatedFrame
        
    }
    
}
