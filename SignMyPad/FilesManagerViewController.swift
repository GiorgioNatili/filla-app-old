//
//  FilesManagerViewController.swift
//  SignMyPad
//
//  Created by Giorgio Natili on 4/29/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import UIKit

class FilesManagerViewController:
    UIViewController,
    FilesManagerViewInterface
{
	// MARK: - Property

    var presenter: FilesManagerModuleInterface? = nil

	// MARK: - Life cycle

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
