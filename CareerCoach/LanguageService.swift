//
//  LanguageService.swift
//  JobInterviewApp
//
//  Created by Puneet Gupta on 19/03/17.
//  Copyright © 2017 TMA. All rights reserved.
//

import Foundation
import UIKit

class LanguageService
{
    static func getAllLanguages() -> Array<Language>
    {
        var languages = [Language]()
        
        languages.append(Language(languageId: 1, languageName: "English", culture: "en"))
        languages.append(Language(languageId: 2, languageName: "Nederlands", culture: "nl"))
        languages.append(Language(languageId: 3, languageName: "Dansk", culture: "da"))
        languages.append(Language(languageId: 4, languageName: "Deutsch", culture: "de"))
        languages.append(Language(languageId: 5, languageName: "Français", culture: "fr"))
        languages.append(Language(languageId: 6, languageName: "Español", culture: "es"))
        languages.append(Language(languageId: 7, languageName: "Português", culture: "pt-PT"))
        //languages.append(Language(languageId: 10, languageName: "العربية", culture: "ar"))
        languages.append(Language(languageId: 41, languageName: "Polish", culture: "pl"))
        languages.append(Language(languageId: 43, languageName: "Русский", culture: "ru"))
        languages.append(Language(languageId: 14, languageName: "Chinese (Simplified)", culture: "zh-Hans"))
        return languages
    }
}
