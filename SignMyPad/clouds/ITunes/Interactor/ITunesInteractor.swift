//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class ITunesInteractor: ITunesInteractorInputProtocol {
    
    weak var presenter: ITunesInteractorOutputProtocol?
    var APIDataManager: ITunesAPIDataManagerInputProtocol?
    var localDatamanager: ITunesLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}