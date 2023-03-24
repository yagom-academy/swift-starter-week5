//
//  Hacker.swift
//  CodeStarterCamp_Week5
//
//  Created by Whales on 2023/03/24.
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

enum Level {
    case A, B, C
}

protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
}

protocol BadPersonality {
    var frequancyOfCursing: Level { get }
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
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level, cursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequancyOfCursing = cursing
        
        super.init(name: name, height: height)
    }
}

