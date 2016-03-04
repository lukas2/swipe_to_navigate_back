//
//  WKWebViewViewController.swift
//  Swipe To Navigate Back
//
//  Created by Lukas Zielinski on 04/03/16.
//  Copyright © 2016 Lukas Zielinski. All rights reserved.
//

import UIKit
import WebKit

class WKWebViewViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        view = webView
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        let url = NSURL(string: "https://en.wikipedia.org")!
        webView.loadRequest(NSURLRequest(URL: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}