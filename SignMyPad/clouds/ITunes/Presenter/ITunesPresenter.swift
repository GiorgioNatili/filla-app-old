//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class ITunesPresenter: ITunesPresenterProtocol, ITunesInteractorOutputProtocol {
    
    weak var view: ITunesViewProtocol?
    var interactor: ITunesInteractorInputProtocol?
    var wireFrame: ITunesWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}