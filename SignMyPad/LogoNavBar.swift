//
//  LogoControlsNavBar.swift
//  SignMyPad
//
//  Created by Giorgio Natili on 5/16/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import UIKit

class LogoNavBar: UINavigationBar {

    // MARK: Private reference to logo and size
    private var logo:UIImageView?
    private var logoWidth:CGFloat?
    private var screenSize:CGFloat?
    
    // MARK: Private logic realted properties
    private var layoutDirty:Bool
    private var _logoPercentage:CGFloat
    
    // MARK: initialization
    required init(coder aDecoder: NSCoder) {
        
        layoutDirty = false
        _logoPercentage = 0.0

        super.init(coder: aDecoder)
        
    }
    
    // MARK: ovverrides
    required override init(frame: CGRect) {
        
        layoutDirty = false
        _logoPercentage = 0.0
        
        super.init(frame: frame)
        
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        if logoPercentage != 0.0 {
        
            layoutDirty = false
            screenSize = self.frame.width
            
            
        }
        
    }
    
    override func didAddSubview(subview: UIView) {
        
        if subview.subviews.count > 0 && subview.subviews[0] is UIImageView {
            
            logo = subview.subviews[0] as? UIImageView
            
        }
        
    }
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */

    // MARK: private manipulation methods
    private func updateFrameWidth (control: UIView, percentage: CGFloat) {
        
        let currentFrame = control.frame
        var newFrame = CGRectMake(currentFrame.origin.x, currentFrame.origin.y, currentFrame.width * percentage, currentFrame.height)
        
        control.frame = newFrame
        
    }
    
    // MARK: public interface
    var logoPercentage:CGFloat {
        
        get {
            
            return _logoPercentage
            
        }
        
        set{
            
            _logoPercentage = newValue
            
        }
    }
    
}
