//
//
// PROJECT
//
// Created by Giorgio Natili
// Copyright (c) 2015 Giorgio Natili. All rights reserved.
//

import Foundation

class HelpPresenter: NSObject, HelpPresenterProtocol, HelpInteractorOutputProtocol, UIWebViewDelegate {
    
    weak var view: HelpViewProtocol?
    var interactor: HelpInteractorInputProtocol?
    var wireFrame: HelpWireFrameProtocol?
    
    override init() {
        
        // Initialization
    
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError) {
        
        print("Webview fail with error \(error)");
        view?.showErrorMessage("HELP_LOADING_ERROR".localized)
    
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        // Eventually prevent here the navigation to other domains
        return true;
    
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        
        print("Webview started Loading")
        view?.showLoader(true)
    
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        
        print("Webview did finish load")
        view?.showLoader(false)
    
    }

}