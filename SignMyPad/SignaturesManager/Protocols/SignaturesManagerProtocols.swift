//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

protocol SignaturesManagerViewProtocol: class {
    
    var presenter: SignaturesManagerPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol SignaturesManagerWireFrameProtocol: class {
    
    static func presentSignaturesManagerModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol SignaturesManagerPresenterProtocol: class {
    
    var view: SignaturesManagerViewProtocol? { get set }
    var interactor: SignaturesManagerInteractorInputProtocol? { get set }
    var wireFrame: SignaturesManagerWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol SignaturesManagerInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol SignaturesManagerInteractorInputProtocol: class {
    
    var presenter: SignaturesManagerInteractorOutputProtocol? { get set }
    var APIDataManager: SignaturesManagerAPIDataManagerInputProtocol? { get set }
    var localDatamanager: SignaturesManagerLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol SignaturesManagerDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol SignaturesManagerAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol SignaturesManagerLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
