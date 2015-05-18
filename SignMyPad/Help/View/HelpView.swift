//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation
import UIKit
import SwiftSpinner

class HelpView: UIViewController, HelpViewProtocol {
    
    let helpURL = NSURL (string:"http://autriv.com/f-a-q/")
    var presenter: HelpPresenterProtocol?
    
    // MARK: - IBOutlets
    @IBOutlet weak var helpContent: UIWebView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        helpContent.delegate = presenter as? UIWebViewDelegate
        
        let request = NSURLRequest(URL: helpURL!)
        helpContent.loadRequest(request)
        
    }
    
    // MARK: - HelpViewProtocol
    func showLoader(status: Bool) {
        
        if status {
            
            SwiftSpinner.show("LOADING_HELP".localized)
            self.view.window?.addSubview(SwiftSpinner.sharedInstance)
            
        }else{

            SwiftSpinner.hide()
            
        }
        
    }
    
    func showErrorMessage(message: String) {
        
        var alert = UIAlertController(title: "ALERT".localized, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
}