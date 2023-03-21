//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by suyeon park on 2023/03/21.
//

import Foundation

class TalentedPerson: Person, Talent {
    var singing: Level?
    var dancing: Level?
    var acting: Level?
    
    init(name: String = "", height: Int = 0, singing: Level? = nil, dancing: Level? = nil, acting: Level? = nil) {
        super.init(name: name, height: height)
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
    }
    
    func hasTalent() -> Bool {
        if singing == .A || dancing == .A || acting == .A {
            return true
        } else {
            return false
        }
    }
}
