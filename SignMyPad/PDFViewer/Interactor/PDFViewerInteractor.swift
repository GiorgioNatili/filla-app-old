//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
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