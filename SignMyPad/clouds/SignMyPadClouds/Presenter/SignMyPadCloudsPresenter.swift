//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class SignMyPadCloudsPresenter: SignMyPadCloudsPresenterProtocol, SignMyPadCloudsInteractorOutputProtocol {
    
    weak var view: SignMyPadCloudsViewProtocol?
    var interactor: SignMyPadCloudsInteractorInputProtocol?
    var wireFrame: SignMyPadCloudsWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }

}