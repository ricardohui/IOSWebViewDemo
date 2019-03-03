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
        if  let url = URL(string: "https://www.stackoverflow.com"){
            let request = NSMutableURLRequest(url:url)
            let task = URLSession.shared.dataTask(with: request as URLRequest){
                data, response, error in
                if let error = error{
                    print(error)
                }else{
                    if let unwrappedData = data{
                        let dataString  = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        print(dataString)
                        DispatchQueue.main.sync(execute:
                            {}
                        )
                    }
                }
            }
            task.resume()
        }
        
        
    }


}

