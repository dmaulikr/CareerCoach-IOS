//
//  ViewController.swift
//  CompetencyLibrary
//
//  Created by Puneet Gupta on 25/04/17.
//  Copyright © 2017 TMA. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

//    @IBOutlet weak var webView: UIWebView!
//    @IBOutlet weak var webViewInstance: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url = "http://competencylibrary.com/";
        
        let lang = UserPreferencesHelper.getUserDefaultString(key: Constants.LOCALE_LANG)
        
        let index = lang.index(lang.startIndex, offsetBy: 2)
        
        url = url + "?lang=" + lang.substring(to: index)
        
        navigationItem.title = "app_name".localized
        
//        webView.loadRequest(NSURLRequest(url: NSURL(string: url)! as URL) as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

