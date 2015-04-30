//
//  SignaturePanelWireframe.swift
//  SignMyPad
//
//  Created by Giorgio Natili on 4/29/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import UIKit

let SignaturePanelViewControllerIdentifier: String = "SignaturePanelViewController"

class SignaturePanelWireframe
{
	// MARK: - Property

    var presenter: SignaturePanelPresenter? = nil

    // MARK: - Presentation

    func presentInterface(fromWindow window: UIWindow)
    {
    	/*
        let viewController = self.viewControllerFromStoryboard()
        */

    	/*
        let navigationViewController = self.navigationControllerFromStoryboard()
        if let viewController = navigationViewController.viewControllers.first as? SignaturePanelViewController
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
    private func viewControllerFromStoryboard() -> SignaturePanelViewController
    {
    let storyboard = self.mainStoryboard()
    let viewController = storyboard.instantiateViewControllerWithIdentifier(SignaturePanelViewControllerIdentifier) as! SignaturePanelViewController
    return viewController
    }
    */
    
    /*
    private func navigationControllerFromStoryboard() -> UINavigationController
    {
    let storyboard = self.mainStoryboard()
    let navigationController = storyboard.instantiateViewControllerWithIdentifier(SignaturePanelViewControllerIdentifier) as! UINavigationController
    return navigationController
    }
    */
}
