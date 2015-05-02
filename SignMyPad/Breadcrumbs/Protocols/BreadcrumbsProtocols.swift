//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

protocol BreadcrumbsViewProtocol: class {
    
    var presenter: BreadcrumbsPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol BreadcrumbsWireFrameProtocol: class {
    
    static func presentBreadcrumbsModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol BreadcrumbsPresenterProtocol: class {
    
    var view: BreadcrumbsViewProtocol? { get set }
    var interactor: BreadcrumbsInteractorInputProtocol? { get set }
    var wireFrame: BreadcrumbsWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol BreadcrumbsInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol BreadcrumbsInteractorInputProtocol: class {
    
    var presenter: BreadcrumbsInteractorOutputProtocol? { get set }
    var APIDataManager: BreadcrumbsAPIDataManagerInputProtocol? { get set }
    var localDatamanager: BreadcrumbsLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol BreadcrumbsDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol BreadcrumbsAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol BreadcrumbsLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
