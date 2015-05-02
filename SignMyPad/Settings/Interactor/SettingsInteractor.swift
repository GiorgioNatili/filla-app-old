//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class SettingsInteractor: SettingsInteractorInputProtocol {
    
    weak var presenter: SettingsInteractorOutputProtocol?
    var APIDataManager: SettingsAPIDataManagerInputProtocol?
    var localDatamanager: SettingsLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}