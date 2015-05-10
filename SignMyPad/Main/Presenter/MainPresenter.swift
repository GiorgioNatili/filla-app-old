//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class MainPresenter: MainPresenterProtocol, MainInteractorOutputProtocol {
    
    weak var view: MainViewProtocol?
    var interactor: MainInteractorInputProtocol?
    var wireFrame: MainWireFrameProtocol?
    
    init() {
        
        // Initialization
    
    }
    
    // MARK: INTERACTOR -> PRESENTER
    func handleRandomValue(value: String) {
        
        let start = "The random is a number: "
        view?.showRandomValue(start + value)
        
    }
    
    func handleRandomValue(value: AnyObject) {
        
        view?.showRandomValue(value.valueForKey("joke") as! String)
        
    }
    
    func handleErrorMessage(error: NSError) {

        view?.showErrorMessage("Got an error, the code is:\(error.code)")

    }
    
    
    // MARK: VIEW -> PRESENTER
    func generateAndFormatRandom(){
        
        interactor?.getRandomValue()
        
    }
    
    func viewDidAppear() {
        
        view!.sayHello()
        
    
    }
    
    func launchEditor() {
        
        let window = UIApplication.sharedApplication().delegate!.window!!
        PDFEditorWireFrame.presentPDFEditorModule(fromView: window.rootViewController!)
        
    }

}