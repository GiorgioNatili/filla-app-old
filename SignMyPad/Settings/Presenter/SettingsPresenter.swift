//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class SettingsPresenter: SettingsPresenterProtocol, SettingsInteractorOutputProtocol {
    
    weak var view: SettingsViewProtocol?
    var interactor: SettingsInteractorInputProtocol?
    var wireFrame: SettingsWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}