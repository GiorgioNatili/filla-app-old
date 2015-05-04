//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class SignaturesEditorInteractor: SignaturesEditorInteractorInputProtocol {
    
    weak var presenter: SignaturesEditorInteractorOutputProtocol?
    var APIDataManager: SignaturesEditorAPIDataManagerInputProtocol?
    var localDatamanager: SignaturesEditorLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}