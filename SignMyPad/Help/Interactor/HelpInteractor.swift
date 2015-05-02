//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class HelpInteractor: HelpInteractorInputProtocol {
    
    weak var presenter: HelpInteractorOutputProtocol?
    var APIDataManager: HelpAPIDataManagerInputProtocol?
    var localDatamanager: HelpLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}