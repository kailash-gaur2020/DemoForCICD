//
//  Result.swift
//  Anonymous
//
//  Created by Kailash Gaur on 08/09/18.
//  Copyright © 2018 iDev. All rights reserved.
//

import Foundation

enum Result<T, E: Error> {
    case success(T)
    case failure(E)
}
