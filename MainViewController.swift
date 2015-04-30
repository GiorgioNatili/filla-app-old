//
//  MainViewController.swift
//  SignMyPad
//
//  Created by Natili, Giorgio on 4/30/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MainViewInterface {
	
    // MARK: - Property

    var presenter: MainModuleInterface? = nil

	// MARK: - Life cycle

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    
    func promptNoConnection() {
        //
    }
    
    func sayHello() {
        //
    }
}
