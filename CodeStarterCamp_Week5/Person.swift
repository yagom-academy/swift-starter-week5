//
//  Person.swift
//  CodeStarterCamp_Week5
//
//  Created by 이정민 on 2022/05/10.
//

import Foundation

class Person {
    let name: String
    let height: Int
    
    init(name: String, height: Int) {
        self.name = name
        self.height = height
    }
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

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
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
