//
//  TalentedPersonWithBadPersonality.swift
//  CodeStarterCamp_Week5
//
//  Created by junho lee on 2022/07/21.
//

import Foundation

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    let singing: Level
    let dancing: Level
    let acting: Level
    let frequancyOfCursing: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level,
         acting: Level, frequancyOfCursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequancyOfCursing = frequancyOfCursing
        super.init(name: name, height: height)
    }
    
    func isGoodPerson() -> Bool {
        if (singing == .A || dancing == .A || acting == .A) &&
            frequancyOfCursing == .A {
            return true
        } else {
            return false
        }
    }
}
