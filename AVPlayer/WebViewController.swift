//
//  WebViewController.swift
//  Movie and Music Player
//
//  Created by Rey Cerio on 2017-03-06.
//  Copyright © 2017 CeriOS. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let fileURL = NSURL(fileURLWithPath: "/Users/reycerio/Desktop/Movie and Music Player/Movie and Music Player/Taka V Taka.mov")
        
        webView.loadHTMLString("<iframe width = \" \(self.webView.frame.width) \" height = \" \(self.webView.frame.height)\" src = \"\(fileURL)\"> <iframe>", baseURL: nil)

    }

    override func viewDidAppear(_ animated: Bool) {
        
            }
}
