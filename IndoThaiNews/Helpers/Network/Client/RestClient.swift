//
//  RestClient.swift
//  Anonymous
//
//  Created by Kailash Gaur on 08/09/18.
//  Copyright © 2018 iDev. All rights reserved.
//

import Foundation
import Alamofire
import SwiftMessageBar
let  delegate : AppDelegate = UIApplication.shared.delegate as! AppDelegate

protocol RestClientProtocol : class {
    
}

final class RestClient : RestClientProtocol{
  var baseURL : String?{
        if let _baseURl = SettingsBundleHelper.gateWay{
            return _baseURl
        }else{
            return nil
        }
    }
    private var token : String?
    var contentType : ContentType?
    var error   : CustomServiceError?
    var onSuccess: ((AnyObject?,AnyObject?) -> Void)?
    var onFailure: ((CustomServiceError?) -> Void)?
    
    static let sharedInstance: RestClient = {
        let instance = RestClient(contentType: ContentType.JSON)
        
        // setup code
        return instance
    }()
    
    // MARK: Provide init method having contentType
    init(contentType: ContentType){
        self.contentType = contentType
        //TO DO: set the baseURL according to build
    }

    
}

