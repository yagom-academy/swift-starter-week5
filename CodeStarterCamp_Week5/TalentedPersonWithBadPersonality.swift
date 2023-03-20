//
//  TalentedPersonWithBadPersonality.swift
//  CodeStarterCamp_Week5
//
//  Created by Hyungmin Lee on 2023/03/20.
//

import Foundation

protocol BadPersonality {
    var frequencyOfCursing: Level { get set }
}

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    var singing: Level
    var dancing: Level
    var acting: Level
    var frequencyOfCursing: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level, frequencyOfCursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequencyOfCursing = frequencyOfCursing
        
        super.init(name: name, height: height)
    }
}
