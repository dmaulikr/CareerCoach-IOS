//
//  Language.swift
//  JobInterviewApp
//
//  Created by Puneet Gupta on 17/03/17.
//  Copyright © 2017 TMA. All rights reserved.
//

import Foundation
import UIKit

class Language
{
    var languageId: Int
    var languageName: String
    var culture: String
    
    init(languageId: Int, languageName: String, culture: String) {
        self.languageId = languageId
        self.languageName = languageName
        self.culture = culture
    }
}
