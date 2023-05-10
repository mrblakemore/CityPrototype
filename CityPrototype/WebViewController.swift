//
//  WebViewController.swift
//  CityPrototype
//
//  Created by Robby Blakemore on 2/22/23.
// WEB VIEWER RESOURCE: https://medium.com/swift-productions/create-a-web-view-xcode-12-swift-5-3-9806d41cc9b



import UIKit
import WebKit


class WebViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func loadView() {
            webView = WKWebView()
            webView.navigationDelegate = self
            view = webView
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.municipalonlinepayments.com/carrolltonga/utilities/quickpay")!
         webView.load(URLRequest(url: url))
        
        

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
