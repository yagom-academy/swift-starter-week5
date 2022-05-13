//
//  Person.swift
//  CodeStarterCamp_Week5
//
//  Created by 김인호 on 2022/05/12.
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
    var frequencyOfCursing: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level, frequencyOfCursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequencyOfCursing = frequencyOfCursing
        super.init(name: name, height: height)
    }

}
