//
//  TalentedPersonWithBadPersonality.swift
//  CodeStarterCamp_Week5
//
//  Created by Jungmo Yu on 2022/01/05.
//

import Foundation

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality{
    var singing: Level = .A
    var dancing: Level = .A
    var acting: Level = .A
    var frequencyOfCursing: Level = .A
    
    init(name:String, height: Int, singing: Level, dancing: Level, acting: Level, frequencyOfCursing: Level) {
        super.init(name: name, height: height)
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequencyOfCursing = frequencyOfCursing
    }
    
    required init(singing: Level, dancing: Level, acting: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequencyOfCursing = .B
        super.init(name: "NoName", height: 185)
    }
}
