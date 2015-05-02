//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class BreadcrumbsInteractor: BreadcrumbsInteractorInputProtocol {
    
    weak var presenter: BreadcrumbsInteractorOutputProtocol?
    var APIDataManager: BreadcrumbsAPIDataManagerInputProtocol?
    var localDatamanager: BreadcrumbsLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}