//
//  PlatformColors.swift
//  SignMyPad
//
//  Created by Giorgio Natili on 5/8/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import Foundation

enum PlatformColors:Int {
    
    case BLACK, RED, WHITE, GRAY, DARKGRAY, LITE_GRAY, INDIGO
    
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
            
        case .INDIGO:
            
            red = 0
            green = 106
            blue = 145
            break

        case .DARKGRAY:
            
            red = 67
            green = 75
            blue = 80
            break
            
        case .GRAY:
            
            red = 85
            green = 94
            blue = 100
            break

        case .LITE_GRAY:
            
            red = 165
            green = 177
            blue = 185
            break
            
        default:
            
            println("Unexpteced color, returning Fuchsia")
          
        }
        
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        
    }
    
}