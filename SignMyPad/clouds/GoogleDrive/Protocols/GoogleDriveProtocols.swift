//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

protocol GoogleDriveViewProtocol: class {
    
    var presenter: GoogleDrivePresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol GoogleDriveWireFrameProtocol: class {
    
    static func presentGoogleDriveModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol GoogleDrivePresenterProtocol: class {
    
    var view: GoogleDriveViewProtocol? { get set }
    var interactor: GoogleDriveInteractorInputProtocol? { get set }
    var wireFrame: GoogleDriveWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol GoogleDriveInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol GoogleDriveInteractorInputProtocol: class {
    
    var presenter: GoogleDriveInteractorOutputProtocol? { get set }
    var APIDataManager: GoogleDriveAPIDataManagerInputProtocol? { get set }
    var localDatamanager: GoogleDriveLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol GoogleDriveDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol GoogleDriveAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol GoogleDriveLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
