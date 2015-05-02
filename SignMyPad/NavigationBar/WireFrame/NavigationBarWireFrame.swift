//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation
import UIKit

class NavigationBarWireFrame: NavigationBarWireFrameProtocol {
    
    static func presentNavigationBarModule(fromView view: UIView) {
        
        // Generating module components
        var view: NavigationBarViewProtocol = NavigationBarView()
        var presenter: protocol<NavigationBarPresenterProtocol, NavigationBarInteractorOutputProtocol> = NavigationBarPresenter()
        var interactor: NavigationBarInteractorInputProtocol = NavigationBarInteractor()
        var APIDataManager: NavigationBarAPIDataManagerInputProtocol = NavigationBarAPIDataManager()
        var localDataManager: NavigationBarLocalDataManagerInputProtocol = NavigationBarLocalDataManager()
        var wireFrame: NavigationBarWireFrameProtocol = NavigationBarWireFrame()
        
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