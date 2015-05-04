//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class ReomoteResourceInteractor: ReomoteResourceInteractorInputProtocol {
    
    weak var presenter: ReomoteResourceInteractorOutputProtocol?
    var APIDataManager: ReomoteResourceAPIDataManagerInputProtocol?
    var localDatamanager: ReomoteResourceLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}