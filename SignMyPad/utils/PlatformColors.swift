//
//  PlatformColors.swift
//  SignMyPad
//
//  Created by Giorgio Natili on 5/8/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import Foundation

enum PlatformColors:Int {
    
    case BLACK, RED, WHITE, GRAY, DARKGRAY, INDIGO
    
    func uiColor () -> UIColor?{
        
        var (red:CGFloat, green:CGFloat, blue:CGFloat) = (255, 0, 128)
        
        switch self {
            
        case .BLACK:
            
            red = 0
            green = 0
            blue = 0
            break
            
        case .RED:
            
            red = 255
            green = 0
            blue = 0
            break
            
        case .WHITE:
            
            red = 255
            green = 255
            blue = 255
            break
            
        case .GRAY:
            
            red = 153
            green = 153
            blue = 153
            break
            
        case .INDIGO:
            
            red = 0
            green = 106
            blue = 145
            break
            
        default:
            
            println("Unexpteced color, returning Fuchsia")
          
        }
        
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        
    }
    
}