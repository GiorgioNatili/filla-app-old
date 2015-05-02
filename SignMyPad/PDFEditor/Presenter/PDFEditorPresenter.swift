//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
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