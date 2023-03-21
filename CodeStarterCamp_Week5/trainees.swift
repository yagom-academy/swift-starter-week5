//
//  trainees.swift
//  CodeStarterCamp_Week5
//
//  Created by MARY on 2023/03/20.
//

import Foundation

protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
}

protocol BadPersonality {
    var frequancyOfCursing: Level { get }
}

class TalentedPerson: Person, Talent {
    let singing: Level
    let dancing: Level
    let acting: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        super.init(name: name, height: height)
    }
}

class TalentedPersonWithBadPersonality: TalentedPerson, BadPersonality {
    let frequancyOfCursing: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level, frequancyOfCursing: Level) {
        self.frequancyOfCursing = frequancyOfCursing
        super.init(name: name, height: height, singing: singing, dancing: dancing, acting: acting)
    }
}
