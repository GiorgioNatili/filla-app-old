//
//
// PROJECT
//
// Created by VIPER
// Copyright (c) 2015 VIPER. All rights reserved.
//

import Foundation

protocol PDFViewerViewProtocol: class {
    
    var presenter: PDFViewerPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol PDFViewerWireFrameProtocol: class {
    
    static func presentPDFViewerModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol PDFViewerPresenterProtocol: class {
    
    var view: PDFViewerViewProtocol? { get set }
    var interactor: PDFViewerInteractorInputProtocol? { get set }
    var wireFrame: PDFViewerWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol PDFViewerInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol PDFViewerInteractorInputProtocol: class {
    
    var presenter: PDFViewerInteractorOutputProtocol? { get set }
    var APIDataManager: PDFViewerAPIDataManagerInputProtocol? { get set }
    var localDatamanager: PDFViewerLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol PDFViewerDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol PDFViewerAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol PDFViewerLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
