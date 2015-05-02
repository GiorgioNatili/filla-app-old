//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class ToolsInteractor: ToolsInteractorInputProtocol
{
    weak var presenter: ToolsInteractorOutputProtocol?
    var APIDataManager: ToolsAPIDataManagerInputProtocol?
    var localDatamanager: ToolsLocalDataManagerInputProtocol?
    
    init() {}
}