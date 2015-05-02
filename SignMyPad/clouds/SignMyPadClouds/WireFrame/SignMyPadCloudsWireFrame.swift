//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class SignMyPadCloudsWireFrame: SignMyPadCloudsWireFrameProtocol {
    
    static func presentSignMyPadCloudsModule(fromView view: AnyObject) {
        
        // Generating module components
        var view: SignMyPadCloudsViewProtocol = SignMyPadCloudsView()
        var presenter: protocol<SignMyPadCloudsPresenterProtocol, SignMyPadCloudsInteractorOutputProtocol> = SignMyPadCloudsPresenter()
        var interactor: SignMyPadCloudsInteractorInputProtocol = SignMyPadCloudsInteractor()
        var APIDataManager: SignMyPadCloudsAPIDataManagerInputProtocol = SignMyPadCloudsAPIDataManager()
        var localDataManager: SignMyPadCloudsLocalDataManagerInputProtocol = SignMyPadCloudsLocalDataManager()
        var wireFrame: SignMyPadCloudsWireFrameProtocol = SignMyPadCloudsWireFrame()
        
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