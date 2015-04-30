//
//  MainDataManager.swift
//  SignMyPad
//
//  Created by Natili, Giorgio on 4/30/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import UIKit
import CoreData

class MainDataManager {
    
    // MARK: - Property
    
    private let managedObjectContext: NSManagedObjectContext?
    
    // MARK: - Life cycle
    
    init() {
        
        if let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate {
        
            self.managedObjectContext = appDelegate.managedObjectContext
        
        } else {
            
            self.managedObjectContext = nil
        
        }
    }

    // MARK: - Data management

}