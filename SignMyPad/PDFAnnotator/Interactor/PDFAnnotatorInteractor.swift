//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class PDFAnnotatorInteractor: PDFAnnotatorInteractorInputProtocol {
    
    weak var presenter: PDFAnnotatorInteractorOutputProtocol?
    var APIDataManager: PDFAnnotatorAPIDataManagerInputProtocol?
    var localDatamanager: PDFAnnotatorLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}