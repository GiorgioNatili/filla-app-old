//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

protocol ReomoteResourceViewProtocol: class {
    
    var presenter: ReomoteResourcePresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol ReomoteResourceWireFrameProtocol: class {
    
    static func presentReomoteResourceModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol ReomoteResourcePresenterProtocol: class {
    
    var view: ReomoteResourceViewProtocol? { get set }
    var interactor: ReomoteResourceInteractorInputProtocol? { get set }
    var wireFrame: ReomoteResourceWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol ReomoteResourceInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol ReomoteResourceInteractorInputProtocol: class {
    
    var presenter: ReomoteResourceInteractorOutputProtocol? { get set }
    var APIDataManager: ReomoteResourceAPIDataManagerInputProtocol? { get set }
    var localDatamanager: ReomoteResourceLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol ReomoteResourceDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol ReomoteResourceAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol ReomoteResourceLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
