//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class NavigationBarInteractor: NavigationBarInteractorInputProtocol {
    
    weak var presenter: NavigationBarInteractorOutputProtocol?
    var APIDataManager: NavigationBarAPIDataManagerInputProtocol?
    var localDatamanager: NavigationBarLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}