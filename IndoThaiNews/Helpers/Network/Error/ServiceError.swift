//
//  ServiceError.swift
//  Anonymous
//
//  Created by Kailash Gaur on 08/09/18.
//  Copyright © 2018 iDev. All rights reserved.
//


import Foundation

typealias JSONData = [String: Any]

enum ErrorResult : Error {
    case network(string: String)
    case parser(string: String)
    case custom(string: String)
}

protocol ServiceErrorProtocol: Error {
    
    var localizedTitle: String { get }
    var localizedDescription: String { get }
    var code: Int { get }
}

struct CustomServiceError: ServiceErrorProtocol {
    
    var localizedTitle: String
    var localizedDescription: String
    var code: Int
    
    init(localizedTitle: String?, localizedDescription: String, code: Int) {
        self.localizedTitle = localizedTitle ?? "Error"
        self.localizedDescription = localizedDescription
        self.code = code
    }
    
    init(withJson json : JSONData) {
        self.localizedTitle = "Error"
        if let message =  json["message"] as? String {
            self.localizedDescription = message
        } else {
            self.localizedDescription = ""
        }
        self.code = 2
    }
}
