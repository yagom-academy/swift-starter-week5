//
//  Person.swift
//  CodeStarterCamp_Week5
//
//  Created by ChoiKwangWoo on 2023/06/12.
//

import Foundation

class Person {
    let name: String
    let height: Double
    
    init(name: String, height: Double) {
        self.name = name
        self.height = height
    }
}

class TalentedPerson: Person, Talent {
    var singing: Level
    var dancing: Level
    var acting: Level
    
    init(name: String, height: Double, singing: Level, dancing: Level, acting: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        super.init(name: name, height: height)
    }
}

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    var singing: Level
    var dancing: Level
    var acting: Level
    var frequancyOfCursing: Level
    
    init(name: String, height: Double, singing: Level, dancing: Level, acting: Level, frequancyOfCursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequancyOfCursing = frequancyOfCursing
        super.init(name: name, height: height)
    }
}
