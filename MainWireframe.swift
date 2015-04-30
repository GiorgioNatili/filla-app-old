//
//  MainWireframe.swift
//  SignMyPad
//
//  Created by Natili, Giorgio on 4/30/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import UIKit

let MainViewControllerIdentifier: String = "MainViewController"

class MainWireframe {
    
	// MARK: - Property

    var presenter: MainPresenter? = nil

    // MARK: - Presentation

    func presentInterface(fromWindow window: UIWindow){
    	
        let viewController = self.viewControllerFromStoryboard()
    	
        let navigationViewController = self.navigationControllerFromStoryboard()
        
        if let viewController = navigationViewController.viewControllers.first as? MainViewController {

            viewController.presenter = self.presenter
            self.presenter?.view = viewController
            
        }
        
    }
    
    
    // MARK: - Storyboard
    
    private func mainStoryboard() -> UIStoryboard{
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle:NSBundle.mainBundle())
        
        return storyboard
        
    }
    
    
    private func viewControllerFromStoryboard() -> MainViewController {
        
        let storyboard = self.mainStoryboard()
        let viewController = storyboard.instantiateViewControllerWithIdentifier(MainViewControllerIdentifier) as MainViewController
        
        return viewController
    
    }
    
    private func navigationControllerFromStoryboard() -> UINavigationController {
        
        let storyboard = self.mainStoryboard()
        let navigationController = storyboard.instantiateViewControllerWithIdentifier(MainViewControllerIdentifier) as UINavigationController
        
        return navigationController
        
    }
    
}
