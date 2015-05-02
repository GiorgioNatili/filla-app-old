//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class SettingsWireFrame: SettingsWireFrameProtocol {
    
    static func presentSettingsModule(fromView view: AnyObject) {
        
        // Generating module components
        var view: SettingsViewProtocol = SettingsView()
        var presenter: protocol<SettingsPresenterProtocol, SettingsInteractorOutputProtocol> = SettingsPresenter()
        var interactor: SettingsInteractorInputProtocol = SettingsInteractor()
        var APIDataManager: SettingsAPIDataManagerInputProtocol = SettingsAPIDataManager()
        var localDataManager: SettingsLocalDataManagerInputProtocol = SettingsLocalDataManager()
        var wireFrame: SettingsWireFrameProtocol = SettingsWireFrame()
        
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