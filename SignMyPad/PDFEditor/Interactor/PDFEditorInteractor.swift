//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class PDFEditorInteractor: PDFEditorInteractorInputProtocol {
    
    weak var presenter: PDFEditorInteractorOutputProtocol?
    var APIDataManager: PDFEditorAPIDataManagerInputProtocol?
    var localDatamanager: PDFEditorLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}