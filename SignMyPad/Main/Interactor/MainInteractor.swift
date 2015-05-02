//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class MainInteractor: MainInteractorInputProtocol {
    
    weak var presenter: MainInteractorOutputProtocol?
    var APIDataManager: MainAPIDataManagerInputProtocol?
    var localDatamanager: MainLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}