//
//  WVController.swift
//  Task-WebView
//
//  Created by Ananth Nair on 04/09/23.
//

import Foundation
import UIKit
import WebKit

class WVController : UIViewController {
    
    @IBOutlet weak var webView : WKWebView!
    var tapped : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(tapped)
        if tapped == 1 {
            webView.load(NSURLRequest(url: NSURL(string: "https://www.apple.com/in/")! as  URL) as URLRequest )
        } else if tapped == 2 {
            webView.load(NSURLRequest(url: NSURL(string: "https://medium.com/swift-programming")! as  URL) as URLRequest )
        } else {
            webView.load(NSURLRequest(url: NSURL(string:"https://www.swift.org/" )! as  URL) as URLRequest )
        }
       
    }
}
