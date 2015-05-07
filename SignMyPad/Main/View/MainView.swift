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

class MainView: UIViewController, MainViewProtocol {
    
    var presenter: MainPresenterProtocol?
    
    // MARK: - IBOutlets
    @IBOutlet weak var randomNumber: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        randomNumber.lineBreakMode = NSLineBreakMode.ByWordWrapping;
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        
        presenter?.viewDidAppear()
        
    }
    
    // MARK: - MainViewProtocol
    func showRandomValue(value:String){
        
        SwiftSpinner.hide()
        randomNumber.text = value
        
    }
    
    func showErrorMessage(value:String){
        
        showAlert(value)
    
    }
    
    func sayHello(){
        
       showAlert("View Did Load")
    
    }
    
    // MARK: - IBActions
    @IBAction func helloWorldPressed(sender: AnyObject) {
        
        showAlert("Hello World from a user gesture!")
        
    }
    
    @IBAction func generateRandomPressed(sender: AnyObject) {
        
        SwiftSpinner.show("Recovering some data...")
        self.view.window?.addSubview(SwiftSpinner.sharedInstance)
        
        presenter?.generateAndFormatRandom()
        
    }
    
    // MARK: Private Methods
    private func showAlert(msg:String){
        
        var alert = UIAlertController(title: "Alert", message: msg, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
}