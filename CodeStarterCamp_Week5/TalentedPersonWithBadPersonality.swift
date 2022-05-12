//
//  TalentedPersonWithBadPersonality.swift
//  CodeStarterCamp_Week5
//
//  Created by 황지웅 on 2022/05/11.
//

import Foundation

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    let singing: Level
    let dancing: Level
    let acting: Level
    let frequancyOfCursing: Level
    
    init(name: String,
         height: Int,
         singing: Level,
         dancing: Level,
         acting: Level,
         frequancyOfCursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequancyOfCursing = frequancyOfCursing
        super.init(name: name, height: height)
    }
    
    func isPass() -> Bool {
        return (singing.isUpperThanALevel ||
                dancing.isUpperThanALevel ||
                acting.isUpperThanALevel) && frequancyOfCursing.isUpperThanALevel
    }
}
