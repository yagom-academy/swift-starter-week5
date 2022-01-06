//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by Jungmo Yu on 2022/01/05.
//

import Foundation

class TalentedPerson: Person, Talent {
    var singing: Level = .A
    var dancing: Level = .A
    var acting: Level = .A
    
//    override init(name: String, height: Int) {
//        super.init(name: name, height: height)
//    }
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level) {
        super.init(name: name, height: height)
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
    }
    
    required init(singing: Level, dancing: Level, acting: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        super.init(name: "NoName", height: 150)
    }

}
