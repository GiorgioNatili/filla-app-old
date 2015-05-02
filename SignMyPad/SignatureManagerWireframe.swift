//
//  SignatureManagerWireframe.swift
//  SignMyPad
//
//  Created by Giorgio Natili on 4/29/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import UIKit

let SignatureManagerViewControllerIdentifier: String = "SignatureManagerViewController"

class SignatureManagerWireframe
{
	// MARK: - Property

    var presenter: SignatureManagerPresenter? = nil

    // MARK: - Presentation

    func presentInterface(fromWindow window: UIWindow)
    {
    	/*
        let viewController = self.viewControllerFromStoryboard()
        */

    	/*
        let navigationViewController = self.navigationControllerFromStoryboard()
        if let viewController = navigationViewController.viewControllers.first as? SignatureManagerViewController
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
    private func viewControllerFromStoryboard() -> SignatureManagerViewController
    {
    let storyboard = self.mainStoryboard()
    let viewController = storyboard.instantiateViewControllerWithIdentifier(SignatureManagerViewControllerIdentifier) as! SignatureManagerViewController
    return viewController
    }
    */
    
    /*
    private func navigationControllerFromStoryboard() -> UINavigationController
    {
    let storyboard = self.mainStoryboard()
    let navigationController = storyboard.instantiateViewControllerWithIdentifier(SignatureManagerViewControllerIdentifier) as! UINavigationController
    return navigationController
    }
    */
}