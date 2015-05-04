//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
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