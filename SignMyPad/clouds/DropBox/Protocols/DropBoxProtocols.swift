//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

protocol DropBoxViewProtocol: class {
    
    var presenter: DropBoxPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol DropBoxWireFrameProtocol: class {
    
    static func presentDropBoxModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol DropBoxPresenterProtocol: class {
    
    var view: DropBoxViewProtocol? { get set }
    var interactor: DropBoxInteractorInputProtocol? { get set }
    var wireFrame: DropBoxWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol DropBoxInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol DropBoxInteractorInputProtocol: class {
    
    var presenter: DropBoxInteractorOutputProtocol? { get set }
    var APIDataManager: DropBoxAPIDataManagerInputProtocol? { get set }
    var localDatamanager: DropBoxLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol DropBoxDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol DropBoxAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol DropBoxLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
