//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MainAPIDataManager: MainAPIDataManagerInputProtocol {
    
    init() {
        
        // Initialization
        
    }
    
    // MARK: INTERACTOR -> APIDATAMANAGER
    func getRemoteRandomNumber(completion: ((response:AnyObject, error:NSError?) -> ())?) {
        
        // Call an API
        Alamofire.request(.GET, "http://api.icndb.com/jokes/random")
        .responseJSON { (_, _, JSON, err) in
            
            println(JSON)
            if (completion != nil) {
                
                completion!(response: JSON!.valueForKey("value")!, error: err)
                
            }
        }
        
    }
    
    // MARK: API Implementation
    
}