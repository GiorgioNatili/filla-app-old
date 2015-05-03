//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation
import UIKit

class MainView: UIViewController, MainViewProtocol {
    
    var presenter: MainPresenterProtocol?
    
    // MARK: - IBOutlets
    @IBOutlet weak var randomNumber: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        self.presenter?.viewDidAppear()
        
    }
    
    // MARK: - MainViewProtocol
    func showRandomValue(value:String){
        
        randomNumber.text = value
        
    }
    
    func showErrorMessage(value:String){
        
        
        
    }
    
    func sayHello(){
        
       self.showAlert("View Did Load")
        
    }
    
    // MARK: - IBActions
    @IBAction func helloWorldPressed(sender: AnyObject) {
        
        self.showAlert("Hello World from a user gesture!")
        
    }
    
    @IBAction func generateRandomPressed(sender: AnyObject) {
        
        self.presenter?.generateAndFormatRandom()
        
    }
    
    // MARK: Private Methods
    private func showAlert(msg:String){
        
        var alert = UIAlertController(title: "Alert", message: msg, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
}