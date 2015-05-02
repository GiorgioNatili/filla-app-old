//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

protocol NavigationBarViewProtocol: class {
    
    var presenter: NavigationBarPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol NavigationBarWireFrameProtocol: class {
    
    static func presentNavigationBarModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol NavigationBarPresenterProtocol: class {
    
    var view: NavigationBarViewProtocol? { get set }
    var interactor: NavigationBarInteractorInputProtocol? { get set }
    var wireFrame: NavigationBarWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol NavigationBarInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol NavigationBarInteractorInputProtocol: class {
    
    var presenter: NavigationBarInteractorOutputProtocol? { get set }
    var APIDataManager: NavigationBarAPIDataManagerInputProtocol? { get set }
    var localDatamanager: NavigationBarLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol NavigationBarDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol NavigationBarAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol NavigationBarLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
