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
    func dataDidLoad(value:AnyObject){
        
        presenter?.handleRandomValue(value)
        
    }
    
    private func gotRemoteRandomNumber(response:AnyObject, err:NSError?) -> (){
        
        var error: NSError? = err
        if error == nil {
            
            dataDidLoad(response)
            
        }else{
            
            presenter?.handleErrorMessage(error!)
            
        }
        
    }
    
    // MARK: PRESENTER -> INTERACTOR
    func getRandomValue(){
        
        if Reachability.isConnectedToNetwork() {
            
            APIDataManager?.getRemoteRandomNumber(gotRemoteRandomNumber)
            
        }else{
            
            if let value = localDatamanager?.getLocalRandomNumber() {
                
                presenter?.handleRandomValue(value.description)
            
            }
            
        }
                
    }
    
}