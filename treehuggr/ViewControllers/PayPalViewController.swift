//
//  PayPalViewController.swift
//  treehuggr
//
//  Created by Nafeh Shoaib on 2018-11-03.
//  Copyright © 2018 nafehshoaib. All rights reserved.
//

import UIKit
import WebKit

class PayPalViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.uiDelegate = self
        webView.navigationDelegate = self
        
        let paypalURL = Bundle.main.url(forResource: "paypal", withExtension: "html")!
        webView.loadFileURL(paypalURL, allowingReadAccessTo: paypalURL)
        webView.load(URLRequest(url: paypalURL))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
