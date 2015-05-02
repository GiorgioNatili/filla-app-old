//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

protocol FileExplorerViewProtocol: class {
    
    var presenter: FileExplorerPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol FileExplorerWireFrameProtocol: class {
    
    static func presentFileExplorerModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol FileExplorerPresenterProtocol: class {
    
    var view: FileExplorerViewProtocol? { get set }
    var interactor: FileExplorerInteractorInputProtocol? { get set }
    var wireFrame: FileExplorerWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol FileExplorerInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol FileExplorerInteractorInputProtocol: class {
    
    var presenter: FileExplorerInteractorOutputProtocol? { get set }
    var APIDataManager: FileExplorerAPIDataManagerInputProtocol? { get set }
    var localDatamanager: FileExplorerLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol FileExplorerDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol FileExplorerAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol FileExplorerLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
