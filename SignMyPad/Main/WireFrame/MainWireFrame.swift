//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class MainWireFrame: MainWireFrameProtocol {
    
    static func presentMainModule(fromView view: AnyObject) {
        
        // Generating module components
        var view: MainViewProtocol = MainView()
        var presenter: protocol<MainPresenterProtocol, MainInteractorOutputProtocol> = MainPresenter()
        var interactor: MainInteractorInputProtocol = MainInteractor()
        var APIDataManager: MainAPIDataManagerInputProtocol = MainAPIDataManager()
        var localDataManager: MainLocalDataManagerInputProtocol = MainLocalDataManager()
        var wireFrame: MainWireFrameProtocol = MainWireFrame()
        
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