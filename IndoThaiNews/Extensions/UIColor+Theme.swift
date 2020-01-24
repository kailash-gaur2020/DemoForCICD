//
//  UIColor+Theme.swift
//  Anonymous
//
//  Created by Kailash Gaur on 08/09/18.
//  Copyright © 2018 iDev. All rights reserved.
//

import UIKit

extension UIColor {
    
    // MARK: Private
    class func imageWithColor(color: UIColor, size: CGSize = CGSize(width: 35.0, height: 35.0)) -> UIImage {
        
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image!
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
    
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
    
    
    func toHexString() -> String {
        
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        print(r)
        print(g)
        print(b)
        print(a)
        
        return String(format: "%02X%02X%02X", Int(r * 255), Int(g * 255), Int(b * 255))
        
    }
    // MARK: Private
    fileprivate static func rgba(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
    
    fileprivate static func rgb(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat) -> UIColor {
        return rgba(r, g, b, 1.0)
    }
    
    // MARK: Public
	
    
    class func getTextFieldBorderSelectionColor() -> UIColor{
        let color = UIColor(red: 255.0/255.0, green: 226.0/255.0, blue: 181.0/255.0, alpha: 1.0)
        return color
    }
    
    
    class func getTextFieldBorderColor() -> UIColor{
        let color = UIColor(red: 218.0/255.0, green: 223.0/255.0, blue: 233.0/255.0, alpha: 1.0)
        return color
    }
    
    class func getCatalinaBlueColor() -> UIColor{
        let color = UIColor(red: 4.0/255.0, green: 25.0/255.0, blue: 120.0/255.0, alpha: 1.0)
        return color
    }
    
    class func getSalemColor() -> UIColor{
        let color = UIColor(red: 7.0/255.0, green: 166.0/255.0, blue: 36/255.0, alpha: 1.0)
        return color
    }
    
    class func getOrangePeelColor() -> UIColor{
        let color = UIColor(red: 254.0/255.0, green: 160.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        return color
    }
    
    class func getSettingFontColor() -> UIColor{
        let color = UIColor(red: 74.0/255.0, green: 74.0/255.0, blue: 92.0/255.0, alpha: 1.0)
        return color
    }
    class func getThemeRedFontColor() -> UIColor{
        let color = UIColor(red: 151.0/255.0, green: 25.0/255.0, blue: 25.0/255.0, alpha: 1.0)
        return color
    }
    class func getShadowColor(alpha : CGFloat) -> UIColor{
        let color = UIColor(red: 39.0/255.0, green: 52.0/255.0, blue: 125.0/255.0, alpha: alpha)
        return color
    }
    
    class func getButtonBorderColor() -> UIColor{
        let color = UIColor(red: 221.0/255.0, green: 226.0/255.0, blue: 236.0/255.0, alpha: 1.0)
        return color
    }
    class func getButtonBorderRedColor() -> UIColor{
        let color = UIColor(red: 121.0/255.0, green: 25.0/255.0, blue:25.0/255.0, alpha: 1.0)
        return color
    }
}

//MARK-
extension Double {
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}

