//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by redmango1446 on 2023/03/24.
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
        super.init(name: name, height: height)
    }
}
