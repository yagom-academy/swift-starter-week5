//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by minsong kim on 2023/03/20.
//

import Foundation

class TalentedPerson: Person, Talent {
    var singing: Level
    var dancing: Level
    var acting: Level
    var visual: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level, visual: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.visual = visual
        super.init(name: name, height: height)
    }
}
