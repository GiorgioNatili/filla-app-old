//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

protocol ToolsViewProtocol: class
{
    var presenter: ToolsPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol ToolsWireFrameProtocol: class
{
    static func presentToolsModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol ToolsPresenterProtocol: class
{
    var view: ToolsViewProtocol? { get set }
    var interactor: ToolsInteractorInputProtocol? { get set }
    var wireFrame: ToolsWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol ToolsInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol ToolsInteractorInputProtocol: class
{
    var presenter: ToolsInteractorOutputProtocol? { get set }
    var APIDataManager: ToolsAPIDataManagerInputProtocol? { get set }
    var localDatamanager: ToolsLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol ToolsDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol ToolsAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol ToolsLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
