//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Ricardo Hui on 3/3/2019.
//  Copyright © 2019 Ricardo Hui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "https://www.stackoverflow.com")!
        webView.loadRequest(URLRequest(url:url))
        
    }


}

