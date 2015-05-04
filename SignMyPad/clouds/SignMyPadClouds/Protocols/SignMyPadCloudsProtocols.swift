//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

protocol SignMyPadCloudsViewProtocol: class {
    
    var presenter: SignMyPadCloudsPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol SignMyPadCloudsWireFrameProtocol: class {
    
    static func presentSignMyPadCloudsModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol SignMyPadCloudsPresenterProtocol: class {
    
    var view: SignMyPadCloudsViewProtocol? { get set }
    var interactor: SignMyPadCloudsInteractorInputProtocol? { get set }
    var wireFrame: SignMyPadCloudsWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol SignMyPadCloudsInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol SignMyPadCloudsInteractorInputProtocol: class {
    
    var presenter: SignMyPadCloudsInteractorOutputProtocol? { get set }
    var APIDataManager: SignMyPadCloudsAPIDataManagerInputProtocol? { get set }
    var localDatamanager: SignMyPadCloudsLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol SignMyPadCloudsDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol SignMyPadCloudsAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol SignMyPadCloudsLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
