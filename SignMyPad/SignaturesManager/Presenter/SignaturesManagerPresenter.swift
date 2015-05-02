//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class SignaturesManagerPresenter: SignaturesManagerPresenterProtocol, SignaturesManagerInteractorOutputProtocol {
    
    weak var view: SignaturesManagerViewProtocol?
    var interactor: SignaturesManagerInteractorInputProtocol?
    var wireFrame: SignaturesManagerWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}