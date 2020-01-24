//
//  SettingsBundleHelper.swift
//  Anonymous
//
//  Created by Kailash Gaur on 08/09/18.
//  Copyright © 2018 iDev. All rights reserved.
//

import Foundation

struct SettingsBundleKeys {
    static let gateway = "GATEWAY_URL"
    static let officeName = "OFFICE_NAME"
    static let AppVersionKey = "VERSION_NO"
}


class SettingsBundleHelper {
    static var gateWay : String? {
        get{
            if let gateway = UserDefaults.standard.getGateWay(ForKey: SettingsBundleKeys.gateway){
                return gateway
            }else{
                return nil
            }
        }
    }
    
    static  var officeName : String?{
        get{
            if let officeName = UserDefaults.standard.getOfficeName(ForKey: SettingsBundleKeys.officeName){
                return officeName
            }else{
                return nil
            }
        }
    }
    
    static  var appVersion : String?{
        get{
            if let appVersion = UserDefaults.standard.getAppVersion(ForKey: SettingsBundleKeys.AppVersionKey){
                return appVersion
            }else{
                return nil
            }
        }
    }
    
    
}
