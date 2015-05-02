//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class HelpPresenter: HelpPresenterProtocol, HelpInteractorOutputProtocol {
    
    weak var view: HelpViewProtocol?
    var interactor: HelpInteractorInputProtocol?
    var wireFrame: HelpWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}