//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
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