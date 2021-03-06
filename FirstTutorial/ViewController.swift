//
//  ViewController.swift
//  FirstTutorial
//
//  Created by Han van Oostende & Jeroen Wijnholds on 24-09-14.
//  Copyright (c) 2014 JalapenoBytes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField:UITextField!
    @IBOutlet var webView:UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didClickGo(AnyObject) {
        var text = textField.text
        var url = NSURL.URLWithString(text)
        var request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }


}

