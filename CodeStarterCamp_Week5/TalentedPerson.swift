//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by junho lee on 2022/07/21.
//

import Foundation

class TalentedPerson: Person, Talent {
    let singing: Level
    let dancing: Level
    let acting: Level
    
    init(name: String, height: Int,
         singing: Level, dancing: Level, acting: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        super.init(name: name, height: height)
    }
    
    func isGoodPerson() -> Bool {
        if singing == .A || dancing == .A || acting == .A {
            return true
        } else {
            return false
        }
    }
}
