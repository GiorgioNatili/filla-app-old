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
    @IBOutlet weak var sideMenu: UIView!
    @IBOutlet weak var mainArea: UIView!
    
    // MARK: - IBOutlets: Navigation Bar
    @IBOutlet weak var help: UIButton!
    @IBOutlet weak var ordering: UISegmentedControl!
    @IBOutlet weak var visualizationOptions: UISegmentedControl!
    
    // MARK: - IBOutlets: Files
    @IBOutlet weak var manageFiles: UILabel!
    @IBOutlet weak var addDocument: UIButton!
    @IBOutlet weak var sendDocument: UIButton!
    @IBOutlet weak var createFolder: UIButton!
    
    // MARK: - IBOutlets: Signatures
    @IBOutlet weak var signatures: UILabel!
    @IBOutlet weak var createSignature: UIButton!
    
    // MARK: - IBOutlets: Clouds
    @IBOutlet weak var cloudServices: UILabel!
    @IBOutlet weak var cloudSignin: UIButton!
    
    // MARK: - IBOutlets: Files Explorer
    @IBOutlet weak var manageDocuments: UILabel!
    @IBOutlet weak var filesExplorer: UIButton!
    
    // MARK: - IBOutlets: Utilities
    @IBOutlet weak var utilities: UILabel!
    @IBOutlet weak var sendFeedback: UIButton!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        updateTextColors()
        updateBackgroundColors()
        updateControlIcons()
        updateTexts()
        
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
    
    @IBAction func orderingChange(sender: UISegmentedControl) {
        
        // TODO Communicate with the presenter to rearrange the data
//        switch sender.selectedSegmentIndex {
//        case 0:
//            println("first segement clicked")
//            break
//        case 1:
//            println("second segment clicked")
//            break
//        case 2:
//            println("third segemnet clicked")
//            break
//        default:
           // break
        
    }
    
    @IBAction func openPDFEditor(sender: AnyObject) {
    
        presenter?.launchEditor()
        
    }
    
    @IBAction func openHelp(sender: AnyObject) {
        
        presenter?.launchHelp()
        
    }
    // MARK: Private Methods
    private func showAlert(msg:String){
        
        var alert = UIAlertController(title: "Alert", message: msg, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
    private func updateTextColors() {
        
        let red = PlatformColors.RED.uiColor()
        
        addDocument.setTitleColor(red, forState: .Normal)
        
        let liteGray = PlatformColors.LITE_GRAY.uiColor()
        
        manageFiles.textColor = liteGray
        createFolder.setTitleColor(liteGray, forState: .Normal)
        signatures.textColor = liteGray
        cloudServices.textColor = liteGray
        manageDocuments.textColor = liteGray
        filesExplorer.setTitleColor(liteGray, forState: .Normal)
        utilities.textColor = liteGray
        sendFeedback.setTitleColor(liteGray, forState: .Normal)
        
        let indigo = PlatformColors.INDIGO.uiColor()
        
        sendDocument.setTitleColor(indigo, forState: .Normal)
        createSignature.setTitleColor(indigo, forState: .Normal)
        cloudSignin.setTitleColor(indigo, forState: .Normal)
        
    }
    
    private func updateBackgroundColors() {
        
        let white = PlatformColors.WHITE.uiColor()
        
        addDocument.backgroundColor = white
        sendDocument.backgroundColor = white
        createFolder.backgroundColor = white
        createSignature.backgroundColor = white
        cloudSignin.backgroundColor = white
        filesExplorer.backgroundColor = white
        sendFeedback.backgroundColor = white
        
        let darkGray = PlatformColors.DARKGRAY.uiColor()
        
        sideMenu.backgroundColor = darkGray
        
        let gray = PlatformColors.GRAY.uiColor()
        
        mainArea.backgroundColor = gray
        
    }
    
    private func updateControlIcons() {
        
        visualizationOptions.setImage(UIImage(named: "icons-view"), forSegmentAtIndex: 0)
        visualizationOptions.setImage(UIImage(named: "list-view"), forSegmentAtIndex: 1)
        
        if let nav = navigationController, image = UIImage(named: "logo"){
            
            let width = view.bounds.size.width
            let height = nav.navigationBar.bounds.height
            
            let scaled = RBResizeImage(image, CGSize(width: width * 0.3, height: height))
            let customView = UIView(frame: CGRect(x: 0, y: 0, width: width * 0.3, height: height))
            let imageView = UIImageView(frame: CGRect(x: ((width * 0.3) - scaled.size.width) / 2, y: 0, width: scaled.size.width, height: scaled.size.height))
            imageView.image = scaled
            
            customView.addSubview(imageView)
            
            let margin = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FixedSpace, target: nil, action: nil)
            margin.width = -16
            let padding = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FixedSpace, target: nil, action: nil)
            padding.width = 16
            
            let logo:UIBarButtonItem = UIBarButtonItem(customView: customView)
            let current:UIBarButtonItem = navigationItem.leftBarButtonItem!
            
            navigationItem.setLeftBarButtonItems([margin, logo, padding, current], animated: true)
            
            (nav.navigationBar as! LogoNavBar).logoPercentage = 0.3
            
        }
        
        addDocument.addIcon("add-document")
        sendDocument.addIcon("send-document")
        createFolder.addIcon("create-folder")
        createSignature.addIcon("create-signature")
        cloudSignin.addIcon("cloud-signin")
        filesExplorer.addIcon("files-explorer")
        
    }
    
    private func updateTexts() {
        
        help.setTitle("HELP".localized, forState: .Normal)
        ordering.setTitle("ORDER_BY_NAME".localized, forSegmentAtIndex: 0)
        ordering.setTitle("ORDER_BY_DATE_ADDED".localized, forSegmentAtIndex: 1)
        ordering.setTitle("ORDER_BY_DATE_MODIFIED".localized, forSegmentAtIndex: 2)
                
        manageFiles.text = "MANAGE_FILES".localized
        addDocument.setTitle("ADD_DOCUMENT".localized, forState: .Normal)
        sendDocument.setTitle("SEND_DOCUMENT".localized, forState: .Normal)
        createFolder.setTitle("NEW_FOLDER".localized, forState: .Normal)
        
        signatures.text = "SIGNATURES".localized
        createSignature.setTitle("CREATE_SIGNATURE".localized, forState: .Normal)

        cloudServices.text = "SERVICES".localized
        cloudSignin.setTitle("CLOUD_SERVICES".localized, forState: .Normal)

        manageDocuments.text = "MANAGE_DOCUMENTS".localized
        filesExplorer.setTitle("FILES_EXPLORER".localized, forState: .Normal)
        
        utilities.text = "UTILITIES".localized
        sendFeedback.setTitle("SEND_FEEDBACK".localized, forState: .Normal)
        
        
    }
    
}