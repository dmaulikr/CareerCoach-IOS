//
//  ViewController.swift
//  CompetencyLibrary
//
//  Created by Puneet Gupta on 25/04/17.
//  Copyright © 2017 TMA. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

  
    @IBOutlet weak var findJob: ButtonControl!
    
    @IBOutlet weak var competency: ButtonControl!
    
    @IBOutlet weak var careerAdvice: ButtonControl!
    
    
    var languages :[Language] = LanguageService.getAllLanguages()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        findJob.setTitle("title_activity_jobFinder".localized, for: .normal)
        careerAdvice.setTitle("title_activity_careerAdvice".localized, for: .normal)
        competency.setTitle("title_activity_competencyLibrary".localized, for: .normal)
        
        navigationItem.title = "app_name".localized
        
        view.addBackground(imageName: "home_bg", contextMode: .scaleAspectFit)
    }
    
    @IBAction func OpenCareerAdvice()
    {
        var url = "http://www.tmacareercoach.com/-/Home/GetCareerAdvice/?type=app&langId=";
        
        let lang = UserPreferencesHelper.getUserDefaultString(key: Constants.LOCALE_LANG)
        
       let language = languages.first { $0.culture == lang }
        
        url = "http://www.tmacareercoach.com/-/Home/GetCareerAdvice/?type=app&langId=\(language?.languageId ?? 1)";
        OpenWebView(url,"title_activity_careerAdvice".localized)
    }
    
    @IBAction func OpenCompetency()
    {
        var url = "http://competencylibrary.com?lang=";
        
        let lang = UserPreferencesHelper.getUserDefaultString(key: Constants.LOCALE_LANG)
        
        let index = lang.index(lang.startIndex, offsetBy: 2)
        
        url = url  + lang.substring(to: index)
        
        OpenWebView(url,"title_activity_competencyLibrary".localized)
    }
    
    @IBAction func OpenJobFinder()
    {
        var url = "http://www.tmajobfinder.com?type=app&langId=";
        
        let lang = UserPreferencesHelper.getUserDefaultString(key: Constants.LOCALE_LANG)
        
        let language = languages.first { $0.culture == lang }
        
        url = "http://www.tmajobfinder.com?type=app&langId=\(language?.languageId ?? 1)";
        OpenWebView(url,"title_activity_jobFinder".localized)
    }

    func OpenWebView(_ url:  String, _ title: String)
    {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        
        controller.urlToNavigate = url;
        controller.title = title;
        
        self.navigationController?.pushViewController(controller, animated: false)
        //self.present(controller, animated: false, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

