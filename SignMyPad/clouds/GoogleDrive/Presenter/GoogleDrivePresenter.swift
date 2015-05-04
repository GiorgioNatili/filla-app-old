//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class GoogleDrivePresenter: GoogleDrivePresenterProtocol, GoogleDriveInteractorOutputProtocol {
    
    weak var view: GoogleDriveViewProtocol?
    var interactor: GoogleDriveInteractorInputProtocol?
    var wireFrame: GoogleDriveWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}