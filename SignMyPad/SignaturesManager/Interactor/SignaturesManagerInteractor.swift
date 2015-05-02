//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
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