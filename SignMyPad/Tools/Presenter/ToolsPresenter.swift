//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class ToolsPresenter: ToolsPresenterProtocol, ToolsInteractorOutputProtocol
{
    weak var view: ToolsViewProtocol?
    var interactor: ToolsInteractorInputProtocol?
    var wireFrame: ToolsWireFrameProtocol?
    
    init() {}
}