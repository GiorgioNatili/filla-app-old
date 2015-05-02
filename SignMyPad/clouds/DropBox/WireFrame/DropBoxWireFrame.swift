//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class DropBoxWireFrame: DropBoxWireFrameProtocol {
    
    static func presentDropBoxModule(fromView view: AnyObject) {
        
        // Generating module components
        var view: DropBoxViewProtocol = DropBoxView()
        var presenter: protocol<DropBoxPresenterProtocol, DropBoxInteractorOutputProtocol> = DropBoxPresenter()
        var interactor: DropBoxInteractorInputProtocol = DropBoxInteractor()
        var APIDataManager: DropBoxAPIDataManagerInputProtocol = DropBoxAPIDataManager()
        var localDataManager: DropBoxLocalDataManagerInputProtocol = DropBoxLocalDataManager()
        var wireFrame: DropBoxWireFrameProtocol = DropBoxWireFrame()
        
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