//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class ToolsWireFrame: ToolsWireFrameProtocol
{
    class func presentToolsModule(fromView view: AnyObject)
    {
        // Generating module components
        var view: ToolsViewProtocol = ToolsView()
        var presenter: protocol<ToolsPresenterProtocol, ToolsInteractorOutputProtocol> = ToolsPresenter()
        var interactor: ToolsInteractorInputProtocol = ToolsInteractor()
        var APIDataManager: ToolsAPIDataManagerInputProtocol = ToolsAPIDataManager()
        var localDataManager: ToolsLocalDataManagerInputProtocol = ToolsLocalDataManager()
        var wireFrame: ToolsWireFrameProtocol = ToolsWireFrame()
        
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