//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
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