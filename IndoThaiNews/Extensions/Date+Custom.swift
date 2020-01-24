//
//  Date + Custom.swift
//  Anonymous
//
//  Created by Kailash Gaur on 20/10/18.
//  Copyright © 2018 iDev. All rights reserved.
//

import Foundation

// MARK: Extension of Date
extension Date {
    func monthAsString() -> String {
        let df = DateFormatter()
        df.setLocalizedDateFormatFromTemplate("MMM")
        return df.string(from: self)
    }
    
    func dateAsString() -> String {
        let df = DateFormatter()
        df.setLocalizedDateFormatFromTemplate("dd")
        return df.string(from: self)
    }
    
    func timeAsString() -> String {
        let df = DateFormatter()
        df.setLocalizedDateFormatFromTemplate("MM")
        return df.string(from: self)
    }
    
    func hour() -> Int
    {
        //Get Hour
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: self)
        
        //Return Hour
        return hour
    }
    
    
    func minute() -> Int
    {
        //Get Minute
        let calendar = Calendar.current
        let minute = calendar.component(.minute, from: self)
        
        //Return Minute
        return minute
    }
    
    func toShortTimeString() -> String
    {
        //Get Short Time String
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        let timeString = formatter.string(from: self)
        
        //Return Short Time String
        return timeString
    }
    var formatted: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return  formatter.string(from: self)
    }
    //EEEE, MMM d, yyyy
    
    var summaryFormatted: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMMM d, yyyy"
        return  formatter.string(from: self)
    }
    
    var dateFormatted: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return  formatter.string(from: self)
    }
    
    var timeFormatted: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a"
        return  formatter.string(from: self)
    }
    
    static func stringToDate(_ strDate : String) -> Date{
        var date : Date!
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        date = formatter.date(from: strDate)
        return date
    }
    static func stringToDate(_ strDate : String,withDateFormat dateFormat: String  ) -> Date{
        var date : Date!
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormat
        date = formatter.date(from: strDate)
        return date
    }
    
    static func utcDateFromString(_ strDate : String) -> Date{
        var date : Date!
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        date = formatter.date(from: strDate)
        return date
    }
    
    static func utcDateFromString(_ strDate : String, DateFormat format : String) -> Date{
        var date : Date!
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        date = formatter.date(from: strDate)
        return date
    }
    
    func utcDateStringFromDate() -> String{
        var dateString : String!
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        dateString = formatter.string(from: self)
        return dateString
    }
    
    func utcDateStringFromDate(_ format : String ) -> String{
        var dateString : String!
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        dateString = formatter.string(from: self)
        return dateString
    }
}
