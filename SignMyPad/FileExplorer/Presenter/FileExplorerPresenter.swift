//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class FileExplorerPresenter: FileExplorerPresenterProtocol, FileExplorerInteractorOutputProtocol {
    
    weak var view: FileExplorerViewProtocol?
    var interactor: FileExplorerInteractorInputProtocol?
    var wireFrame: FileExplorerWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}