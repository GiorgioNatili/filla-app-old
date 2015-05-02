//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class SignaturesManagerInteractor: SignaturesManagerInteractorInputProtocol {
    
    weak var presenter: SignaturesManagerInteractorOutputProtocol?
    var APIDataManager: SignaturesManagerAPIDataManagerInputProtocol?
    var localDatamanager: SignaturesManagerLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}