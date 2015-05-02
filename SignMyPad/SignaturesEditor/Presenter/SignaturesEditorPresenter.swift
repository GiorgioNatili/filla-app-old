//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class SignaturesEditorPresenter: SignaturesEditorPresenterProtocol, SignaturesEditorInteractorOutputProtocol {
    
    weak var view: SignaturesEditorViewProtocol?
    var interactor: SignaturesEditorInteractorInputProtocol?
    var wireFrame: SignaturesEditorWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}