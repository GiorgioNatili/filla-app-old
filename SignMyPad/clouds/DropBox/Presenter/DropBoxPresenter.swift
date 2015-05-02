//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class DropBoxPresenter: DropBoxPresenterProtocol, DropBoxInteractorOutputProtocol {
    
    weak var view: DropBoxViewProtocol?
    var interactor: DropBoxInteractorInputProtocol?
    var wireFrame: DropBoxWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}