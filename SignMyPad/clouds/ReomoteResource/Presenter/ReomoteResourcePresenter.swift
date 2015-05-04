//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class ReomoteResourcePresenter: ReomoteResourcePresenterProtocol, ReomoteResourceInteractorOutputProtocol {
    
    weak var view: ReomoteResourceViewProtocol?
    var interactor: ReomoteResourceInteractorInputProtocol?
    var wireFrame: ReomoteResourceWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}