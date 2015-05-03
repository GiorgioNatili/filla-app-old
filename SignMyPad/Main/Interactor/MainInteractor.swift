//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class MainInteractor: MainInteractorInputProtocol {
    
    weak var presenter: MainInteractorOutputProtocol?
    var APIDataManager: MainAPIDataManagerInputProtocol?
    var localDatamanager: MainLocalDataManagerInputProtocol?
    
    init() {
    
        // Initialization
    
    }
    
    // MARK: INTERACTOR -> PRESENTER
    func dataDidLoad(value:Float32){
        
        presenter?.showRandomNumber(value)
        
    }
    
    // MARK: PRESENTER -> INTERACTOR
    func getRandomNumber(){
        
        if Reachability.isConnectedToNetwork() {
            
            // TODO add a server side call and use dataDidLoad in the callback
            APIDataManager?.getRemoteRandomNumber()
            
        }else{
            
            if let value = localDatamanager?.getLocalRandomNumber() {
                
                dataDidLoad(value)
            
            }
            
        }
                
    }

}