//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class HelpWireFrame: HelpWireFrameProtocol {
    
    static func presentHelpModule(fromView view: AnyObject) {
        
        // Generating module components
        var view: HelpViewProtocol = HelpView()
        var presenter: protocol<HelpPresenterProtocol, HelpInteractorOutputProtocol> = HelpPresenter()
        var interactor: HelpInteractorInputProtocol = HelpInteractor()
        var APIDataManager: HelpAPIDataManagerInputProtocol = HelpAPIDataManager()
        var localDataManager: HelpLocalDataManagerInputProtocol = HelpLocalDataManager()
        var wireFrame: HelpWireFrameProtocol = HelpWireFrame()
        
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