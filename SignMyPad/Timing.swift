//
//  Timing.swift
//  SignMyPad
//
//  Created by Giorgio Natili on 5/3/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import Foundation

public class Timing{
    
    static func delay(#seconds: Double, completion:()->()) {
        let popTime = dispatch_time(DISPATCH_TIME_NOW, Int64( Double(NSEC_PER_SEC) * seconds ))
        
        dispatch_after(popTime, dispatch_get_main_queue()) {
            completion()
        }
    }
    
}