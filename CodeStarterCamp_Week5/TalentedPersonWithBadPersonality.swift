//
//  TalentedPersonWithBadPersonality.swift
//  CodeStarterCamp_Week5
//
//  Created by smfc on 18/7/2022.
//

import Foundation

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    override func walk() {
        print("악당스럽게~ 성큼 성큼🚶")
    }
    func sing() {
        print("\(Person.name)이(가) 춤을 춥니다")
    }
    func dance() {
        print("\(Person.name)이(가) 노래합니다")
    }
    func act() {
        print("\(Person.name)이(가) 연기를 합니다")
    }
    func curse() {
        print("\(Person.name) 나쁜 말~ 삐...")
    }
}
