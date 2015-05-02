//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation
import UIKit

class BreadcrumbsWireFrame: BreadcrumbsWireFrameProtocol {
    
    static func presentBreadcrumbsModule(fromView view: UIView) {
        
        // Generating module components
        var view: BreadcrumbsViewProtocol = BreadcrumbsView()
        var presenter: protocol<BreadcrumbsPresenterProtocol, BreadcrumbsInteractorOutputProtocol> = BreadcrumbsPresenter()
        var interactor: BreadcrumbsInteractorInputProtocol = BreadcrumbsInteractor()
        var APIDataManager: BreadcrumbsAPIDataManagerInputProtocol = BreadcrumbsAPIDataManager()
        var localDataManager: BreadcrumbsLocalDataManagerInputProtocol = BreadcrumbsLocalDataManager()
        var wireFrame: BreadcrumbsWireFrameProtocol = BreadcrumbsWireFrame()
        
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