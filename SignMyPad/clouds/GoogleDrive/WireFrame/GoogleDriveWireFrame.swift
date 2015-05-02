//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class GoogleDriveWireFrame: GoogleDriveWireFrameProtocol {
    
    static func presentGoogleDriveModule(fromView view: AnyObject) {
        
        // Generating module components
        var view: GoogleDriveViewProtocol = GoogleDriveView()
        var presenter: protocol<GoogleDrivePresenterProtocol, GoogleDriveInteractorOutputProtocol> = GoogleDrivePresenter()
        var interactor: GoogleDriveInteractorInputProtocol = GoogleDriveInteractor()
        var APIDataManager: GoogleDriveAPIDataManagerInputProtocol = GoogleDriveAPIDataManager()
        var localDataManager: GoogleDriveLocalDataManagerInputProtocol = GoogleDriveLocalDataManager()
        var wireFrame: GoogleDriveWireFrameProtocol = GoogleDriveWireFrame()
        
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