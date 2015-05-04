//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class ITunesWireFrame: ITunesWireFrameProtocol {
    
    static func presentITunesModule(fromView view: AnyObject) {
        
        // Generating module components
        var view: ITunesViewProtocol = ITunesView()
        var presenter: protocol<ITunesPresenterProtocol, ITunesInteractorOutputProtocol> = ITunesPresenter()
        var interactor: ITunesInteractorInputProtocol = ITunesInteractor()
        var APIDataManager: ITunesAPIDataManagerInputProtocol = ITunesAPIDataManager()
        var localDataManager: ITunesLocalDataManagerInputProtocol = ITunesLocalDataManager()
        var wireFrame: ITunesWireFrameProtocol = ITunesWireFrame()
        
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