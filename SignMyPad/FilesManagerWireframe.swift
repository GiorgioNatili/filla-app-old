//
//  FilesManagerWireframe.swift
//  SignMyPad
//
//  Created by Giorgio Natili on 4/29/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import UIKit

let FilesManagerViewControllerIdentifier: String = "FilesManagerViewController"

class FilesManagerWireframe
{
	// MARK: - Property

    var presenter: FilesManagerPresenter? = nil

    // MARK: - Presentation

    func presentInterface(fromWindow window: UIWindow)
    {
    	
        let viewController = self.viewControllerFromStoryboard()


    	/*
        let navigationViewController = self.navigationControllerFromStoryboard()
        if let viewController = navigationViewController.viewControllers.first as? FilesManagerViewController
        */

        viewController.presenter = self.presenter
        self.presenter?.view = viewController
    }
    
    // MARK: - Storyboard
    
    private func mainStoryboard() -> UIStoryboard
    {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle:NSBundle.mainBundle())
        return storyboard
    }
    
    /*
    private func viewControllerFromStoryboard() -> FilesManagerViewController
    {
    let storyboard = self.mainStoryboard()
    let viewController = storyboard.instantiateViewControllerWithIdentifier(FilesManagerViewControllerIdentifier) as! FilesManagerViewController
    return viewController
    }
    */
    
    /*
    private func navigationControllerFromStoryboard() -> UINavigationController
    {
    let storyboard = self.mainStoryboard()
    let navigationController = storyboard.instantiateViewControllerWithIdentifier(FilesManagerViewControllerIdentifier) as! UINavigationController
    return navigationController
    }
    */
}
