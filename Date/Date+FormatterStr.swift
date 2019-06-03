//
//  Date+FormatterStr.swift
//  SwiftExtensionChimera
//
//  Created by WataruSuzuki on 2018/11/15.
//  Copyright © 2018 WataruSuzuki. All rights reserved.
//

import Foundation

extension Date {
    
    public func formattedString(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        formatter.locale = Locale.current
        return formatter.string(from: self)
    }
    
    static public func dateFromString(string: String) -> Date {
        return dateFromString(string: string, timeStyle: .full)
    }
    
    static public func dateFromString(string: String, timeStyle: DateFormatter.Style) -> Date {
        let formatter: DateFormatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss Z"
        formatter.timeStyle = timeStyle
        return formatter.date(from: string)!
    }
}
