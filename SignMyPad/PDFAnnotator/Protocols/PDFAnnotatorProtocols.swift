//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

protocol PDFAnnotatorViewProtocol: class {
    
    var presenter: PDFAnnotatorPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol PDFAnnotatorWireFrameProtocol: class {
    
    static func presentPDFAnnotatorModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol PDFAnnotatorPresenterProtocol: class {
    
    var view: PDFAnnotatorViewProtocol? { get set }
    var interactor: PDFAnnotatorInteractorInputProtocol? { get set }
    var wireFrame: PDFAnnotatorWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol PDFAnnotatorInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol PDFAnnotatorInteractorInputProtocol: class {
    
    var presenter: PDFAnnotatorInteractorOutputProtocol? { get set }
    var APIDataManager: PDFAnnotatorAPIDataManagerInputProtocol? { get set }
    var localDatamanager: PDFAnnotatorLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol PDFAnnotatorDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol PDFAnnotatorAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol PDFAnnotatorLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
