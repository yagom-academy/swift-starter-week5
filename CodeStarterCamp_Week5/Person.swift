//
//  Person.swift
//  CodeStarterCamp_Week5
//
//  Created by ByungHoon Ann on 2022/11/14.
//

import Foundation

class Person {
    var name: String
    var height: Int
    
    init(name: String, height: Int) {
        self.name = name
        self.height = height
    }
}

class TalentedPerson: Person, Talent {
    var singing: Level
    var dancing: Level
    var acting: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level) {
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
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level, frequancyOfCursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequancyOfCursing = frequancyOfCursing
        super.init(name: name, height: height)
    }
}
