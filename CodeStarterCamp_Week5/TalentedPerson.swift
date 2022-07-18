//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by smfc on 18/7/2022.
//

import Foundation

class TalentedPerson: Person, Talent {
    override func walk() {
        print("걷는것도 우아하게~ 사뿐사뿐")
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
}
