//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

class BreadcrumbsPresenter: BreadcrumbsPresenterProtocol, BreadcrumbsInteractorOutputProtocol {
    
    weak var view: BreadcrumbsViewProtocol?
    var interactor: BreadcrumbsInteractorInputProtocol?
    var wireFrame: BreadcrumbsWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}