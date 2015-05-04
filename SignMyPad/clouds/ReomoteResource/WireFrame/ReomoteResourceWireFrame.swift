//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class ReomoteResourceWireFrame: ReomoteResourceWireFrameProtocol {
    
    static func presentReomoteResourceModule(fromView view: AnyObject) {
        
        // Generating module components
        var view: ReomoteResourceViewProtocol = ReomoteResourceView()
        var presenter: protocol<ReomoteResourcePresenterProtocol, ReomoteResourceInteractorOutputProtocol> = ReomoteResourcePresenter()
        var interactor: ReomoteResourceInteractorInputProtocol = ReomoteResourceInteractor()
        var APIDataManager: ReomoteResourceAPIDataManagerInputProtocol = ReomoteResourceAPIDataManager()
        var localDataManager: ReomoteResourceLocalDataManagerInputProtocol = ReomoteResourceLocalDataManager()
        var wireFrame: ReomoteResourceWireFrameProtocol = ReomoteResourceWireFrame()
        
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