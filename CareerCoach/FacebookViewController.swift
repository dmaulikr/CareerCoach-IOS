//
//  FacebookViewController.swift
//  JobInterviewApp
//
//  Created by Rohit Dabra on 17/03/17.
//  Copyright © 2017 TMA. All rights reserved.
//

import UIKit

class FacebookViewController: UIViewController, UIWebViewDelegate {

    
    @IBOutlet weak var activity: UIActivityIndicatorView!
   
    @IBOutlet weak var webViewInstance: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webViewInstance.delegate = self
        
        webViewInstance.loadRequest(NSURLRequest(url: NSURL(string: "https://www.facebook.com/pg/tmamethode/events/")! as URL) as URLRequest)

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
