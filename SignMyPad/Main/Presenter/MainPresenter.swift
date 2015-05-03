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
    func showRandomNumber (value:Float32) {
        
        let start = "The random number is "
        view?.showRandomNumber(start + String(stringInterpolationSegment: value))
        
    }
    
    // MARK: VIEW -> PRESENTER
    func generateAndFormatRandom(){
        
        
        
    }
    
    func viewDidAppear() {
        
        view!.sayHello()
    
    }

}