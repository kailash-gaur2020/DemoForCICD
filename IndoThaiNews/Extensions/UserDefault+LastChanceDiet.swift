//
//  String+Validation.swift
//  Anonymous
//
//  Created by Kailash Gaur on 08/09/18.
//  Copyright © 2018 iDev. All rights reserved.
//

import Foundation

struct UserDefaultsParam {
	static let INTRODUCTIONIDENTIFIER = "IntroductionIdentifier"
	static let USERIDENTIFIER = "UserIdentifier"
    static let LANGUAGECODE = "LangaugeCode"
}

extension UserDefaults{
    
//    // save User with Identifier
//    func saveUser(_ user:User) -> Void {
//        let encodedData = NSKeyedArchiver.archivedData(withRootObject: user)
//
//        self.set(encodedData, forKey: UserDefaultsParam.USERIDENTIFIER)
//        self.synchronize()
//    }
//
//
//    // get User with Identifier.
//    func getUserIdentifier() -> User? {
//        if let decoded = self.object(forKey: UserDefaultsParam.USERIDENTIFIER) as? Data {
//            let decodedUser = NSKeyedUnarchiver.unarchiveObject(with: decoded) as! User
//
//            return decodedUser
//        } else {
//            return nil
//        }
//    }
    
    
	// save application unique identifier
	func saveIntroIdentifier(_ introIdentifier:Bool) -> Void {
		
		self.set(introIdentifier, forKey: UserDefaultsParam.INTRODUCTIONIDENTIFIER)
		self.synchronize()
	}
	
	
	// get application unique idetifier.
	func getIntroIdentifier() -> Bool {
		if let activationCode = self.object(forKey: UserDefaultsParam.INTRODUCTIONIDENTIFIER) as? Bool {
			return activationCode
		} else {
			return false
		}
	}
    
    func getAppVersion(ForKey key:String) -> String?{
        if let version = self.object(forKey: key) as? String{
            return version
        }else{
            let version = "1.0"
            self.set(version, forKey: key)
            self.synchronize()
            return version
        }
    }
    
    
    func getGateWay(ForKey key:String) -> String?{
        if let gateway = self.object(forKey: key) as? String{
            return gateway
        }else{
            let gateway = "https://Anonymoussapi.azurewebsites.net/api/"
            self.set(gateway, forKey: key)
            self.synchronize()
            return gateway
        }
    }
    
    func getOfficeName(ForKey key:String) -> String?{
        if let office = self.object(forKey: key) as? String{
            return office
        }else{
            let officeName = ""
            self.set(officeName, forKey: key)
            self.synchronize()
            return officeName
        }
    }
    
    
    //Save Date with Identifier
    func setLanguage(_ languageCode:String)->Void{
        let encodedData = NSKeyedArchiver.archivedData(withRootObject: languageCode)

        self.set(encodedData, forKey: UserDefaultsParam.LANGUAGECODE)
        self.synchronize()
    }

    // get Date with Identifier.
    func getLanguage() -> String? {
        if let decoded = self.object(forKey: UserDefaultsParam.LANGUAGECODE) as? Data {
            let decodedLanguageCode = NSKeyedUnarchiver.unarchiveObject(with: decoded) as! String

            return decodedLanguageCode
        } else {
            return nil
        }
    }
}
