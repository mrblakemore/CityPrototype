//
//  ApplyForJobViewController.swift
//  CityPrototype
//
//  Created by Robby Blakemore on 2/28/23.
//

import UIKit
import WebKit

class ApplyForJobViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
            webView = WKWebView()
            webView.navigationDelegate = self
            view = webView
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://carrolltonga.com/human-resources/")!
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
