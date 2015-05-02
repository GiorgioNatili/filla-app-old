//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class PDFAnnotatorPresenter: PDFAnnotatorPresenterProtocol, PDFAnnotatorInteractorOutputProtocol {
    
    weak var view: PDFAnnotatorViewProtocol?
    var interactor: PDFAnnotatorInteractorInputProtocol?
    var wireFrame: PDFAnnotatorWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}