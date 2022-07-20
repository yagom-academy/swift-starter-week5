//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by smfc on 18/7/2022.
//

import Foundation

class TalentedPerson: Person, Talent {
    var singing: Level = .A
    var dancing: Level = .A
    var acting: Level = .A
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level) {
        super.init(name: name, height: height)
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
    }
    
    override func walk() {
        print("걷는것도 우아하게~ 사뿐사뿐")
    }
    
    func sing() {
        print("\(self.name)이(가) 춤을 춥니다")
    }
    
    func dance() {
        print("\(self.name)이(가) 노래합니다")
    }
    
    func act() {
        print("\(self.name)이(가) 연기를 합니다")
    }
}
