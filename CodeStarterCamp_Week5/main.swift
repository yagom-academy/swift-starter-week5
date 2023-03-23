//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


let jerry = Person(name: "jerry", height: 190)
let tom = TalentedPerson(name: "tom", height: 108, singing: .A, dancing: .B, acting: .C)
let hemg = TalentedPerson(name: "hemg", height: 170, singing: .A, dancing: .B, acting: .C)
let ya = TalentedPerson(name: "ya", height: 100, singing: .B, dancing: .B, acting: .C)
let ho = TalentedPerson(name: "ho", height: 100, singing: .B, dancing: .B, acting: .C)
let so = TalentedPerson(name: "so", height: 100, singing: .B, dancing: .B, acting: .A)
let gom = TalentedPersonWithBadPersonality(name: "gom", height: 123, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)
let gom1 = TalentedPersonWithBadPersonality(name: "gom1", height: 123, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)


var groupA = AuditionManager(totalApplicantsList: [jerry, tom, hemg, gom, ya, ho, so, gom1])
var groupB = AuditionManager(totalApplicantsList: [jerry, gom, ya, ho, gom1])
groupA.announcePassedApplicants()


print("합격자 없을 경우")
groupB.announcePassedApplicants()
