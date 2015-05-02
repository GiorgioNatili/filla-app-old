//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class NavigationBarPresenter: NavigationBarPresenterProtocol, NavigationBarInteractorOutputProtocol {
    
    weak var view: NavigationBarViewProtocol?
    var interactor: NavigationBarInteractorInputProtocol?
    var wireFrame: NavigationBarWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}