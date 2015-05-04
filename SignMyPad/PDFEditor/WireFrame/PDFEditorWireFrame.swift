//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation
import UIKit

class PDFEditorWireFrame: PDFEditorWireFrameProtocol {
    
    static func presentPDFEditorModule(fromView view: AnyObject) {
        
        // Generating module components
        var view: PDFEditorViewProtocol = PDFEditorView()
        var presenter: protocol<PDFEditorPresenterProtocol, PDFEditorInteractorOutputProtocol> = PDFEditorPresenter()
        var interactor: PDFEditorInteractorInputProtocol = PDFEditorInteractor()
        var APIDataManager: PDFEditorAPIDataManagerInputProtocol = PDFEditorAPIDataManager()
        var localDataManager: PDFEditorLocalDataManagerInputProtocol = PDFEditorLocalDataManager()
        var wireFrame: PDFEditorWireFrameProtocol = PDFEditorWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
        
    }
}