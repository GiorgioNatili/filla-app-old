//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class PDFEditorPresenter: PDFEditorPresenterProtocol, PDFEditorInteractorOutputProtocol {
    
    weak var view: PDFEditorViewProtocol?
    var interactor: PDFEditorInteractorInputProtocol?
    var wireFrame: PDFEditorWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}