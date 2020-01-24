//
//  UIStoryboard+Loader.swift
//  Anonymous
//
//  Created by Kailash Gaur on 08/09/18.
//  Copyright © 2018 iDev. All rights reserved.
//

import UIKit

fileprivate enum Storyboard : String {
    case main = "Main"
}

fileprivate extension UIStoryboard {
    
    static func loadFromMain(_ identifier: String) -> UIViewController {
        return load(from: .main, identifier: identifier)
    }
    // add convenience methods for other storyboards here ...
    
    // ... or use the main loading method directly when instantiating view controller
    // from a specific storyboard
    static func load(from storyboard: Storyboard, identifier: String) -> UIViewController {
        let uiStoryboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let controller = uiStoryboard.instantiateViewController(withIdentifier: identifier)
        controller.view.frame = UIScreen.main.bounds
        return controller
    }
}

// MARK: App View Controllers

extension UIStoryboard {
//    static func loadPasscodeView() -> PassCodeView {
//        return loadFromMain("PassCodeView") as! PassCodeView
//    }

   
    


}
