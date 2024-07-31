//
//  TimeFormatting.swift
//  Financist
//
//  Created by Marcel Weikum on 09.08.22.
//

import Foundation

func calcTimeSince(date: Date) -> String {
    let minutes = Int(-date.timeIntervalSinceNow)/60
    let hours = minutes/60
    let days = hours/24
    
    if minutes < 120 {
        return "vor \(minutes) Minute(n)"
    } else if minutes >= 120 && hours < 48 {
        return "vor \(hours) Stunde(n)"
    } else {
        return "vor \(days) Tag(en)"
    }
}
