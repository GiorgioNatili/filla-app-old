//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class PDFViewerInteractor: PDFViewerInteractorInputProtocol {
    
    weak var presenter: PDFViewerInteractorOutputProtocol?
    var APIDataManager: PDFViewerAPIDataManagerInputProtocol?
    var localDatamanager: PDFViewerLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}