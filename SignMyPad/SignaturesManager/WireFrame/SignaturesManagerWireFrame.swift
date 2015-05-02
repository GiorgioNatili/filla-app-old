//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class SignaturesManagerWireFrame: SignaturesManagerWireFrameProtocol {
    
    static func presentSignaturesManagerModule(fromView view: AnyObject) {
        
        // Generating module components
        var view: SignaturesManagerViewProtocol = SignaturesManagerView()
        var presenter: protocol<SignaturesManagerPresenterProtocol, SignaturesManagerInteractorOutputProtocol> = SignaturesManagerPresenter()
        var interactor: SignaturesManagerInteractorInputProtocol = SignaturesManagerInteractor()
        var APIDataManager: SignaturesManagerAPIDataManagerInputProtocol = SignaturesManagerAPIDataManager()
        var localDataManager: SignaturesManagerLocalDataManagerInputProtocol = SignaturesManagerLocalDataManager()
        var wireFrame: SignaturesManagerWireFrameProtocol = SignaturesManagerWireFrame()
        
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