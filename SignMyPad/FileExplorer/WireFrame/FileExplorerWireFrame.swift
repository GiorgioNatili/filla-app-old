//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class FileExplorerWireFrame: FileExplorerWireFrameProtocol {
    
    static func presentFileExplorerModule(fromView view: AnyObject) {
        
        // Generating module components
        var view: FileExplorerViewProtocol = FileExplorerView()
        var presenter: protocol<FileExplorerPresenterProtocol, FileExplorerInteractorOutputProtocol> = FileExplorerPresenter()
        var interactor: FileExplorerInteractorInputProtocol = FileExplorerInteractor()
        var APIDataManager: FileExplorerAPIDataManagerInputProtocol = FileExplorerAPIDataManager()
        var localDataManager: FileExplorerLocalDataManagerInputProtocol = FileExplorerLocalDataManager()
        var wireFrame: FileExplorerWireFrameProtocol = FileExplorerWireFrame()
        
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