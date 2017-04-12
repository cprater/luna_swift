//
//  LunarPhaseModel.swift
//  LunarTracking
//
//  Created by Christopher Prater on 4/12/17.
//  Copyright © 2017 Christopher Prater. All rights reserved.
//

import Foundation

struct Moon {
    let phase: String
    let age: Int
    let rise: Date
    let set: Date
}

struct Phase {
    let name: String
    let date: Date
}

class LunarPhaseModel {
    var currentMoon: Moon {
        let moon = Moon(phase: "full moon", age: 14, rise: Date(), set: Date())
        
        return moon
    }
    
    var currentPhases: [Phase] {
        let phase1 = Phase(name: "first quarter", date: Date())
        let phase2 = Phase(name: "full moon", date: Date())
        let phase3 = Phase(name: "third quarter", date: Date())
        
        return [phase1, phase2, phase3]
    }
}
