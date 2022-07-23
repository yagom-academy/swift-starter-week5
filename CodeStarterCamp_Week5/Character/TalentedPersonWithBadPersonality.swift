//
//  TalentedPersonWithBadPersonality.swift
//  CodeStarterCamp_Week5
//
//  Created by smfc on 18/7/2022.
//

import Foundation

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    var singing: Level = .B
    var dancing: Level = .B
    var acting: Level = .B
    var frequancyOfCursing: Level = .A
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level, frequancyOfCursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequancyOfCursing = frequancyOfCursing
        super.init(name: name, height: height)
    }
    
    override func walk() {
        print("악당스럽게~ 성큼 성큼🚶")
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
    
    func curse() {
        print("\(self.name) 나쁜 말~ 삐...")
    }
}
