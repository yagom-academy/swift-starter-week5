//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .A, acting: .C)
let noroo = Person(name: "noroo", height: 1000)
let summer = TalentedPerson(name: "summer", height: 900, singing: .B, dancing: .B, acting: .B)
let coda = TalentedPerson(name: "coda", height: 200, singing: .A, dancing: .C, acting: .C)
let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)

let mary = AuditionManager()
let hybeEntertainment = Entertainment(name: "HYBE", auditionManager: mary)

yagom.apply(to: hybeEntertainment)
noroo.apply(to: hybeEntertainment)
summer.apply(to: hybeEntertainment)
coda.apply(to: hybeEntertainment)
odong.apply(to: hybeEntertainment)

hybeEntertainment.cast()

print(mary.totalApplicantsList.map{ $0.name })
//mary.totalApplicantsList = [summer, coda]
//print(mary.passedApplicantsList.map{ $0.name })
