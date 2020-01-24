//
//  NavigationController.swift
//  IndoThaiNews
//
//  Created by Kailash Gaur on 12/09/18.
//  Copyright © 2018 Kailash Gaur. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override var shouldAutorotate : Bool {
        return false
    }
    
    override var prefersStatusBarHidden : Bool {
        return UIApplication.shared.statusBarOrientation.isLandscape && UI_USER_INTERFACE_IDIOM() == .phone
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .default
    }
    
    override var preferredStatusBarUpdateAnimation : UIStatusBarAnimation {
        return sideMenuController!.isRightViewVisible ? .slide : .fade
    }

}
