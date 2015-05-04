//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class GoogleDriveInteractor: GoogleDriveInteractorInputProtocol {
    
    weak var presenter: GoogleDriveInteractorOutputProtocol?
    var APIDataManager: GoogleDriveAPIDataManagerInputProtocol?
    var localDatamanager: GoogleDriveLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}