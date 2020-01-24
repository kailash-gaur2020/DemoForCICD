//
//  String+Validation.swift
//  Anonymous
//
//  Created by Kailash Gaur on 08/09/18.
//  Copyright © 2018 iDev. All rights reserved.
//

import Foundation


extension String{
    // MARK : Method for Email check
    func isValidEmail() -> Bool {
        print("validate emilId: \(self )")
        let emailRegEx = "^(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?(?:(?:(?:[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+(?:\\.[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+)*)|(?:\"(?:(?:(?:(?: )*(?:(?:[!#-Z^-~]|\\[|\\])|(?:\\\\(?:\\t|[ -~]))))+(?: )*)|(?: )+)\"))(?:@)(?:(?:(?:[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)(?:\\.[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)*)|(?:\\[(?:(?:(?:(?:(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))\\.){3}(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))))|(?:(?:(?: )*[!-Z^-~])*(?: )*)|(?:[Vv][0-9A-Fa-f]+\\.[-A-Za-z0-9._~!$&'()*+,;=:]+))\\])))(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: self)
        return result
    }
    
    // MARK : Method for Phone number or Mobile number check
    func validateMobileNumber() -> Bool {
        let PHONE_REGEX = "^\\d{3}\\d{3}\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: self)
        return result
    }
    
    // MARK : Method for OTP code check
    func validateOTPCode() -> Bool {
        let PHONE_REGEX = "^\\d{6}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: self)
        return result
    }
    
    // MARK : Method for blank check
    func isStringBlank() -> Bool {
        var isBlank : Bool? = false
        isBlank = self.trimmingCharacters(in: NSCharacterSet.whitespaces).isEmpty
        return isBlank!
    }
    
    func passwordValidate() -> Bool{
        var isValidate : Bool? = false
        let PASSWORDALPHANUMERIC_REGEX = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PASSWORDALPHANUMERIC_REGEX)
        isValidate =  phoneTest.evaluate(with: self)
        return isValidate!
    }
    
    func contains(find: String) -> Bool {
        if self.range(of:find) != nil {
            return true
        }
        
        // alternative: not case sensitive
        if self.lowercased().range(of:find.lowercased()) != nil {
            return true
        } else {
            return false
        }
    }
    
}


