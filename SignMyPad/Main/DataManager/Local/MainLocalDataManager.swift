//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class MainLocalDataManager: MainLocalDataManagerInputProtocol {
    
    init() {
        
        // Initialization
        
    }
    
    // MARK: INTERACTOR -> LOCALDATAMANAGER
    func getLocalRandomNumber() -> Float32 {
        
        let arc4randoMax:Double = 0x100000000
        let upper = 1.0
        let lower = 0.0
        let ab = Float32((Double(arc4random()) / arc4randoMax) * (upper - lower) + lower)
        
        return ab
        
    }

}