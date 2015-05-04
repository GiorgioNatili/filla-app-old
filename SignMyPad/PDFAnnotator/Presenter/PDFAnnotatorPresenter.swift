//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
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