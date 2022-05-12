//
//  File.swift
//  CodeStarterCamp_Week5
//
//  Created by 이정민 on 2022/05/12.
//

import Foundation

class TalentedPersonWithBadPersonality: Person {
    let singing: Level
    let dancing: Level
    let acting: Level
    let frequancyOfCursing: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level, frequancyOfCursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequancyOfCursing = frequancyOfCursing
        super.init(name: name, height: height)
    }
}

extension TalentedPersonWithBadPersonality: Talent {}
extension TalentedPersonWithBadPersonality: BadPersonality {}
