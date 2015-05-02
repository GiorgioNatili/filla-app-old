//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

protocol SignaturesEditorViewProtocol: class {
    
    var presenter: SignaturesEditorPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol SignaturesEditorWireFrameProtocol: class {
    
    static func presentSignaturesEditorModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol SignaturesEditorPresenterProtocol: class {
    
    var view: SignaturesEditorViewProtocol? { get set }
    var interactor: SignaturesEditorInteractorInputProtocol? { get set }
    var wireFrame: SignaturesEditorWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol SignaturesEditorInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol SignaturesEditorInteractorInputProtocol: class {
    
    var presenter: SignaturesEditorInteractorOutputProtocol? { get set }
    var APIDataManager: SignaturesEditorAPIDataManagerInputProtocol? { get set }
    var localDatamanager: SignaturesEditorLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol SignaturesEditorDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol SignaturesEditorAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol SignaturesEditorLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
