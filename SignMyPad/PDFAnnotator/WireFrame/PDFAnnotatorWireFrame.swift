//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation
import UIKit

class PDFAnnotatorWireFrame: PDFAnnotatorWireFrameProtocol {
    
    static func presentPDFAnnotatorModule(fromView view: UIView) {
        
        // Generating module components
        var view: PDFAnnotatorViewProtocol = PDFAnnotatorView()
        var presenter: protocol<PDFAnnotatorPresenterProtocol, PDFAnnotatorInteractorOutputProtocol> = PDFAnnotatorPresenter()
        var interactor: PDFAnnotatorInteractorInputProtocol = PDFAnnotatorInteractor()
        var APIDataManager: PDFAnnotatorAPIDataManagerInputProtocol = PDFAnnotatorAPIDataManager()
        var localDataManager: PDFAnnotatorLocalDataManagerInputProtocol = PDFAnnotatorLocalDataManager()
        var wireFrame: PDFAnnotatorWireFrameProtocol = PDFAnnotatorWireFrame()
        
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