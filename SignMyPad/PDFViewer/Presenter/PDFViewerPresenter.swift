//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
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