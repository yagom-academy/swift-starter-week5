//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by 비모 on 2023/03/21.
//

import Foundation

class TalentedPerson: Person, Talent {
    var singing: Level?
    var dancing: Level?
    var acting: Level?
    
    init(name: String, height: Int, singing: Level?, dancing: Level?, acting: Level?) {
        super.init(name: name, height: height)
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
    }
}
