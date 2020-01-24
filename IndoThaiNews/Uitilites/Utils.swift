//
//  Utils.swift
//  Anonymous
//
//  Created by Kailash Gaur on 20/10/18.
//  Copyright © 2018 iDev. All rights reserved.
//

import Foundation
import UIKit
//MARK: Return nil if object is NSNull
class Utils {
    //need to move this file to util files
    static func nullToNil(_ value : AnyObject?) -> AnyObject? {
        if value is NSNull {
            return nil
        } else {
            return value
        }
    }
    
    static func objectShadow(_ object : AnyObject, alpha : CGFloat)  {
        object.layer.shadowColor = UIColor.getShadowColor(alpha: alpha).cgColor
        object.layer.shadowOpacity = 0.2
        object.layer.shadowOffset = CGSize.zero
        object.layer.rasterizationScale = UIScreen.main.scale
        object.layer.shadowRadius = 4

        
    }
    
    static func rightImageView(_ textField : UITextField, imageName : String){
        textField.rightViewMode = .always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 15, height: 15))
         imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: imageName)
        imageView.image = image
        textField.rightView = imageView
    }
}
