//
//  UserPreferencesHelper.swift
//  JobInterviewApp
//
//  Created by Puneet Gupta on 17/03/17.
//  Copyright © 2017 TMA. All rights reserved.
//

import Foundation
import UIKit

class UserPreferencesHelper
{
    static func setUserDefaultString(key: String, value: String) {
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    static func getUserDefaultString(key: String) -> String {
        let defaults = UserDefaults.standard
        let value = defaults.string(forKey: key)
        if(value == nil)
        {
            return "en"
        }
        return value!
    }
    
    static func setUserDefaultInt(key: String, value: Int) {
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key)
    }
    
    static func getUserDefaultInt(key: String) -> Int {
        let defaults = UserDefaults.standard
        let value:Int = defaults.integer(forKey: key)
        if(value == 0){
            return 1
        }
        return value
    }
    
    
}
