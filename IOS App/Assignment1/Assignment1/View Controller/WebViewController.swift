//
//  WebViewController.swift
//  Assignment1
//
//  Created by Xcode User on 2019-01-29.
//  Copyright © 2019 Jessica Yan. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var wbpage : WKWebView!
    @IBOutlet var activity : UIActivityIndicatorView!
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activity.isHidden = false
        activity.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activity.isHidden = true
        activity.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlAddress = URL(string: "https://yanjin.dev.fast.sheridanc.on.ca/Jinhua/")
        let url = URLRequest(url : urlAddress!)
        wbpage.load(url)
        wbpage.navigationDelegate = self
        
        // Do any additional setup after loading the view.
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
