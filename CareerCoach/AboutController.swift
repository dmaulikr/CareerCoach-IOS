//
//  AboutController.swift
//  JobInterviewApp
//
//  Created by Rohit Dabra on 21/03/17.
//  Copyright © 2017 TMA. All rights reserved.
//

import UIKit

class AboutController: UIViewController {

    
    
    @IBOutlet weak var aboutText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.parent?.navigationController?.navigationBar.barTintColor = hexStringToUIColor(hex: Constants.colors[7]);
        
        self.navigationController?.navigationBar.isHidden = true;
        
        aboutText.text = "contactText".localized
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
