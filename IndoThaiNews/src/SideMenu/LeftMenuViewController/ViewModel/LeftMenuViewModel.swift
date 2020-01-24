//
//  LeftMenuViewModel.swift
//  IndoThaiNews
//
//  Created by Kailash Gaur on 16/09/18.
//  Copyright © 2018 Kailash Gaur. All rights reserved.
//

import Foundation
import SwiftMessageBar

class LeftMenuViewModel {
    weak var dataSource : GenericDataSource<Any>?
    weak var service: RestClientProtocol?
    
    init(service: RestClientProtocol = RestClient.sharedInstance, dataSource : GenericDataSource<Any>?) {
        self.dataSource = dataSource
        self.service = service
    }
    
    
    func fetchPatients(WithSearchKeyword keyword:String,_ completion: ((Result<Bool, ErrorResult>) -> Void)? = nil){
        guard let service = service else {
            completion?(Result.failure(ErrorResult.custom(string: "Missing service")))
            return
        }

    }
}
