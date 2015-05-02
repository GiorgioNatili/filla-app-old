//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class PDFViewerPresenter: PDFViewerPresenterProtocol, PDFViewerInteractorOutputProtocol {
    
    weak var view: PDFViewerViewProtocol?
    var interactor: PDFViewerInteractorInputProtocol?
    var wireFrame: PDFViewerWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}