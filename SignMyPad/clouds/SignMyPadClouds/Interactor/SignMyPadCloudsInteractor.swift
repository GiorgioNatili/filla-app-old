//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class SignMyPadCloudsInteractor: SignMyPadCloudsInteractorInputProtocol {
    
    weak var presenter: SignMyPadCloudsInteractorOutputProtocol?
    var APIDataManager: SignMyPadCloudsAPIDataManagerInputProtocol?
    var localDatamanager: SignMyPadCloudsLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }

}