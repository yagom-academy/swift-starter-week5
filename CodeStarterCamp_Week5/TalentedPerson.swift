//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by 황지웅 on 2022/05/11.
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
    
    func isPass() -> Bool {
        return self.singing.isUpperThanALevel ||
                self.dancing.isUpperThanALevel ||
                self.acting.isUpperThanALevel
    }
}

