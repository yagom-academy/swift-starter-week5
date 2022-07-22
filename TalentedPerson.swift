//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by 이준영 on 2022/07/22.
//

import Foundation

class TalentedPerson: Person, Talent {
    var singing: Level
    var dancing: Level
    var acting: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        super .init(name: name, height: height)
    }
}
