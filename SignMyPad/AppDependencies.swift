//
//  AppDependencies.swift
//  SignMyPad
//
//  Created by Natili, Giorgio on 4/30/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies {
    
    var mainWireframe = MainWireFrame()
    
    init() {
        
        configureDependencies()
        
    }
    
    func installRootViewControllerIntoWindow(window: UIWindow) {
        
        MainWireFrame.presentMainModule(fromView: window)
    
    }
    
    func configureDependencies() {
    
    
    }
}