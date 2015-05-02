//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation
import UIKit

class PDFViewerWireFrame: PDFViewerWireFrameProtocol {
    
    static func presentPDFViewerModule(fromView view: UIView) {
        
        // Generating module components
        var view: PDFViewerViewProtocol = PDFViewerView()
        var presenter: protocol<PDFViewerPresenterProtocol, PDFViewerInteractorOutputProtocol> = PDFViewerPresenter()
        var interactor: PDFViewerInteractorInputProtocol = PDFViewerInteractor()
        var APIDataManager: PDFViewerAPIDataManagerInputProtocol = PDFViewerAPIDataManager()
        var localDataManager: PDFViewerLocalDataManagerInputProtocol = PDFViewerLocalDataManager()
        var wireFrame: PDFViewerWireFrameProtocol = PDFViewerWireFrame()
        
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