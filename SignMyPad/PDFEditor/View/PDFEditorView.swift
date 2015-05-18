//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation
import UIKit

class PDFEditorView: UIViewController, PDFEditorViewProtocol {
    
    var presenter: PDFEditorPresenterProtocol?
    
    private var activeViewController:UIViewController?
    private var viewControllerArray: [UIViewController] = []
    
    // MARK: - IBOutlets
    @IBOutlet weak var activeViewContainer: UIView!
    @IBOutlet weak var save: UIButton!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        presenter?.initializeEditor()
        
    }

    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        
        
    }
    
    // MARK: - IBActions
    @IBAction func saveData(sender: UIButton) {
        
        if let activeVC:PDFViewController = activeViewController as? PDFViewController {
            
            
            
        }
        
    }
    
    // MARK: PRESENTER -> VIEW
    func renderPDFViewController(controller:PDFViewController) {
        
        activeViewController = controller
        updateActiveViewController()
        
    }
    
    var viewControllers: [UIViewController]  {
        get { // getter returns read only copy
            let immutableCopy = viewControllerArray
            return immutableCopy
        }
        set {
            viewControllerArray = newValue
            
            // set the active view controller to the first one in the new array if the current one is not in there
            if activeViewController == nil || find(viewControllerArray, activeViewController!) == nil {
                activeViewController = viewControllerArray.first
            }
        }
    }
    
    // MARK: Private Methods
    private func updateActiveViewController() {
        
        if isViewLoaded() {
            
            if let activeVC = activeViewController {
                
                addChildViewController(activeVC)
                activeVC.view.frame = activeViewContainer.bounds
                activeViewContainer.addSubview(activeVC.view)
              //  activeVC.didMoveToParentViewController(self)
                
            }
        }
    }

}