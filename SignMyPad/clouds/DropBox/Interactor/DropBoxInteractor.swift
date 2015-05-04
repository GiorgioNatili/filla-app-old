//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class DropBoxInteractor: DropBoxInteractorInputProtocol {
    
    weak var presenter: DropBoxInteractorOutputProtocol?
    var APIDataManager: DropBoxAPIDataManagerInputProtocol?
    var localDatamanager: DropBoxLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}