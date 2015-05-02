//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation
import UIKit

class SignaturesEditorWireFrame: SignaturesEditorWireFrameProtocol {
    
    static func presentSignaturesEditorModule(fromView view: UIView) {
        
        // Generating module components
        var view: SignaturesEditorViewProtocol = SignaturesEditorView()
        var presenter: protocol<SignaturesEditorPresenterProtocol, SignaturesEditorInteractorOutputProtocol> = SignaturesEditorPresenter()
        var interactor: SignaturesEditorInteractorInputProtocol = SignaturesEditorInteractor()
        var APIDataManager: SignaturesEditorAPIDataManagerInputProtocol = SignaturesEditorAPIDataManager()
        var localDataManager: SignaturesEditorLocalDataManagerInputProtocol = SignaturesEditorLocalDataManager()
        var wireFrame: SignaturesEditorWireFrameProtocol = SignaturesEditorWireFrame()
        
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