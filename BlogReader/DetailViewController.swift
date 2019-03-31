//
//  DetailViewController.swift
//  BlogReader
//
//  Created by Ricardo Hui on 31/3/2019.
//  Copyright © 2019 Ricardo Hui. All rights reserved.
//

import UIKit
import WebKit
class DetailViewController: UIViewController {

  

    @IBOutlet var webView: WKWebView!
    
    func configureView() {
        // Update the user interface for the detail item.
        
            if let detail = self.detailItem{
                self.title = detail.value(forKey: "title") as! String
                if let blogWebView = self.webView{
                    blogWebView.loadHTMLString(detail.value(forKey: "content") as? String ?? "No Content is loaded", baseURL: nil)
                }
            }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

