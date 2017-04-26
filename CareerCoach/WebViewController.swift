//
//  WebViewController.swift
//  CareerCoach
//
//  Created by Rohit Dabra on 26/04/17.
//  Copyright © 2017 TMA. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {
    
    
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    @IBOutlet weak var webViewInstance: UIWebView!
    
    @IBOutlet weak var webView: UIWebView!
    
    public var urlToNavigate : String = "";
    
    public var navTitle : String = "";
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webViewInstance.delegate = self
        
        webViewInstance.loadRequest(NSURLRequest(url: NSURL(string: urlToNavigate)! as URL) as URLRequest)
        
        self.navigationController?.navigationItem.title = navTitle;
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView){
        // here show your indicator
        activity.startAnimating()
        activity.isHidden = false;
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        // here hide it
        activity.stopAnimating()
        activity.isHidden = true;
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error)
    {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
