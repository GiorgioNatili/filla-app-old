//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
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