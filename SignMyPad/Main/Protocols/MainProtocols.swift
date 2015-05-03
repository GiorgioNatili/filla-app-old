//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

protocol MainViewProtocol: class {
    
    var presenter: MainPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
    
    func showRandomNumber(value:String)
    func sayHello()
    
}

protocol MainWireFrameProtocol: class {
    
    static func presentMainModule(fromView uiview: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol MainPresenterProtocol: class {
    
    var view: MainViewProtocol? { get set }
    var interactor: MainInteractorInputProtocol? { get set }
    var wireFrame: MainWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
    func viewDidAppear()
    func generateAndFormatRandom()

}

protocol MainInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
    func showRandomNumber(value:Float32)
    
}

protocol MainInteractorInputProtocol: class {
    
    var presenter: MainInteractorOutputProtocol? { get set }
    var APIDataManager: MainAPIDataManagerInputProtocol? { get set }
    var localDatamanager: MainLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
    func getRandomNumber()
    
}

protocol MainDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol MainAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
    func getRemoteRandomNumber()

}

protocol MainLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
    func getLocalRandomNumber() -> Float32

}
