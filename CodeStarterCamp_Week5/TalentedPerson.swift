//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by 조민호 on 2022/01/04.
//

import Foundation

enum Level {
    case A
    case B
    case C
}

protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
}

protocol BadPersonality {
    var frequancyOfCursing: Level { get }
}

final class TalentedPerson: Person, Talent {
    private(set) var singing: Level
    private(set) var dancing: Level
    private(set) var acting: Level
    
    init(singing: Level,
         dancing: Level,
         acting: Level,
         name: String,
         height: Int) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        super.init(name: name, height: height)
    }
}

final class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    private(set) var singing: Level
    private(set) var dancing: Level
    private(set) var acting: Level
    private(set) var frequancyOfCursing: Level
    
    init(singing: Level,
         dancing: Level,
         acting: Level,
         frequancyOfCursing: Level,
         name: String,
         height: Int) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequancyOfCursing = frequancyOfCursing
        super.init(name: name, height: height)
    }
}
