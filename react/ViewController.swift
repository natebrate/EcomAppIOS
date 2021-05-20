//
//  ViewController.swift
//  react
//
//  Created by Software Engineering on 18/05/2021.
//  Copyright © 2021 Software Engineering. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://seaside-live.herokuapp.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}

