//
//  Constants.swift
//  JobInterviewApp
//
//  Created by Puneet Gupta on 17/03/17.
//  Copyright © 2017 TMA. All rights reserved.
//

import Foundation

struct Constants
{
    static var colors:[String] = [
        "#ee7352",  //orange
        "#afcc46",  //light_green
        "#d24291",  //purple
        "#fab400",  //yellow
        "#50b47e",  //dark_green
        "#0085C8",  //dark_blue
        "#5cc0c4",  //sky_blue
        "#9d9d9d",   //gray
        "#9d9d9d"   //gray
    ];
    
    static var LOCALE_LANG:String = "LOCALE_LANG"
    
    static var BASIC_INTERVIEW_QUESTIONS_IDs: String  = "1,2,3,4,5,6,7,19,11,12,44,45,20,21,22,23,24,77,78,80"
    
    static var GENERAL_TMA_INTERVIEW: Int = 1;
    static var TMA_ASSESSMENT_CENTER: Int = 2;
    static var TMA_COMPETENCIES: Int = 5;
    static var REFERENCE_CHECK: Int = 3;
    static var CANDIDATES_QUESTIONS: Int = 4;
    static var TMA_TALENT_MODEL: Int = 6;
    static var BASIC_INTERVIEW_QUESTIONS: Int = 7;
    static var ABOUT_US: Int = 8;
    static var CONTACT_US: Int = 9;
    static var GET_ALL_CATEGORIES: Int = -1;
    
    
    static let HomeController = "HomeViewController";
    static let BasicInterview = "BasicInterviewController";
    static let GeneralInterview = "GeneralInterviewController";
    static let Assessements = "AssessmentCenterController";
    static let Competency = "CompetencyController"
    static let Reference = "ReferenceController";
    static let CandidateQuestions = "CandidateQuestionController";
    static let TalentModel = "TalentModelController";
    static let About = "AboutController";
    
    static let TMALattitude = 52.0923733;
    static let TMALongitude = 5.1478934;

    
}
