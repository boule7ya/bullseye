//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Anypli on 06/11/2019.
//  Copyright © 2019 Anypli. All rights reserved.
//

import UIKit
import WebKit
class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye",
                                     withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}

