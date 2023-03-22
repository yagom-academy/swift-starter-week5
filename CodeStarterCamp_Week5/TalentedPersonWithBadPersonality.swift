//
//  TalentedPersonWithBadPersonality.swift
//  CodeStarterCamp_Week5
//
//  Created by suyeon park on 2023/03/21.
//

import Foundation

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    var singing: Level?
    var dancing: Level?
    var acting: Level?
    var frequancyOfCursing: Level
    
    init(name: String = "", height: Int = 160, singing: Level? = nil, dancing: Level? = nil, acting: Level? = nil, frequancyOfCursing: Level = .C) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequancyOfCursing = frequancyOfCursing
        super.init(name: name, height: height)
    }
}
