//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

protocol ITunesViewProtocol: class {
    
    var presenter: ITunesPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol ITunesWireFrameProtocol: class {
    
    static func presentITunesModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol ITunesPresenterProtocol: class {
    
    var view: ITunesViewProtocol? { get set }
    var interactor: ITunesInteractorInputProtocol? { get set }
    var wireFrame: ITunesWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol ITunesInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol ITunesInteractorInputProtocol: class {
    
    var presenter: ITunesInteractorOutputProtocol? { get set }
    var APIDataManager: ITunesAPIDataManagerInputProtocol? { get set }
    var localDatamanager: ITunesLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol ITunesDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol ITunesAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol ITunesLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
