//
//  Router.swift
//  Anonymous
//
//  Created by Kailash Gaur on 08/09/18.
//  Copyright © 2018 iDev. All rights reserved.
//

import Foundation
import UIKit

protocol Router {
    func route(to routeID: String,from context: UIViewController,parameters: Any?
    )
}
