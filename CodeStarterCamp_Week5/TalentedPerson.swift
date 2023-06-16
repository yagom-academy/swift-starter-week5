//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by 김예림 on 2023/06/16.
//

import Foundation

class TalentedPerson: Person, Talent {
    var singing: Level
    var dancing: Level
    var acting: Level
    
    init(name: String, height: Float, singing: Level, dancing: Level, acting: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        super.init(name: name, height: height)
    }
    
    func hasAnyALevelOfTalent() -> Bool {
        if singing == .A || dancing == .A || acting == .A {
            return true
        }
        return false
    }
}
