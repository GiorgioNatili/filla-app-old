//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

protocol PDFEditorViewProtocol: class {
    
    var presenter: PDFEditorPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol PDFEditorWireFrameProtocol: class {
    
    static func presentPDFEditorModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol PDFEditorPresenterProtocol: class {
    
    var view: PDFEditorViewProtocol? { get set }
    var interactor: PDFEditorInteractorInputProtocol? { get set }
    var wireFrame: PDFEditorWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */

}

protocol PDFEditorInteractorOutputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
}

protocol PDFEditorInteractorInputProtocol: class {
    
    var presenter: PDFEditorInteractorOutputProtocol? { get set }
    var APIDataManager: PDFEditorAPIDataManagerInputProtocol? { get set }
    var localDatamanager: PDFEditorLocalDataManagerInputProtocol? { get set }
    
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
}

protocol PDFEditorDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */

}

protocol PDFEditorAPIDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */

}

protocol PDFEditorLocalDataManagerInputProtocol: class {
    
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */

}
