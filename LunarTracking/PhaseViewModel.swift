//
//  PhaseViewModel.swift
//  LunarTracking
//
//  Created by Christopher Prater on 4/12/17.
//  Copyright © 2017 Christopher Prater. All rights reserved.
//

import Foundation

extension String {
    var symbolForMoon: String {
        switch self {
        case "new moon":
            return "\u{f095}"
        case "first quarter":
            return "\u{f09c}"
        case "full moon":
            return "\u{f0a3}"
        case "last quarter":
            return "\u{f0aa}"
        default:
            return self
        }
    }
}

struct PhaseViewModel {
    fileprivate let phase: Phase
    
    init(phase: Phase) {
        self.phase = phase
    }
    
    var icon: String {
        return phase.name.symbolForMoon
    }
    
    var date: String {
        return self.formatter.string(from: phase.date)
    }
    
    fileprivate var formatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMMM d yyyy"
        return formatter
    }
}
