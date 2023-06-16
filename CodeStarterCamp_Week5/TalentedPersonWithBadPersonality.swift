//
//  TalentedPersonWithBadPersonality.swift
//  CodeStarterCamp_Week5
//
//  Created by 김예림 on 2023/06/16.
//

import Foundation

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    var singing: Level
    var dancing: Level
    var acting: Level
    var frequencyOfCursing: Level
    
    init(name: String, height: Float, singing: Level, dancing: Level, acting: Level,
         frequencyOfCursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequencyOfCursing = frequencyOfCursing
        super.init(name: name, height: height)
    }
    
    func hasAnyALevelOfTalent() -> Bool {
        if (singing == .A || dancing == .A || acting == .A) && (frequencyOfCursing != .C) {
            return true
        }
        return false
    }
}
