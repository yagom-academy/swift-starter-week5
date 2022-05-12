//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by 이정민 on 2022/05/12.
//

import Foundation

class TalentedPerson: Person {
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

extension TalentedPerson: Talent {}
