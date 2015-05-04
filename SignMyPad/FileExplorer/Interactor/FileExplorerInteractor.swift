//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class FileExplorerInteractor: FileExplorerInteractorInputProtocol {
    
    weak var presenter: FileExplorerInteractorOutputProtocol?
    var APIDataManager: FileExplorerAPIDataManagerInputProtocol?
    var localDatamanager: FileExplorerLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}