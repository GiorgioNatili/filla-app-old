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
        //
    }
    
    
    // MARK: VIEW -> PRESENTER
    func generateAndFormatRandom(){
        
        interactor?.getRandomValue()
        
    }
    
    func viewDidAppear() {
        
        view!.sayHello()
    
    }

}