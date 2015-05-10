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
    
    // MARK: VIEW -> PRESENTER
    func initializeEditor() {
        
        let path = NSBundle.mainBundle().pathForResource("testA", ofType: "pdf")
        let editor = PDFViewController(path: path)
        
        editor.view.backgroundColor = UIColor.redColor()
        
        println(path)
        
        view?.renderPDFViewController(editor)
        
    }

}