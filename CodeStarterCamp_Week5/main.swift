//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


let jerry = Person(name: "jerry", height: 190)
let tom = TalentedPerson(name: "tom", height: 108, singing: .A, dancing: .B, acting: .C) // 합
let hemg = TalentedPerson(name: "hemg", height: 170, singing: .A, dancing: .B, acting: .C) //합
let ya = TalentedPerson(name: "ya", height: 100, singing: .B, dancing: .B, acting: .C) // 탈
let ho = TalentedPerson(name: "ho", height: 100, singing: .B, dancing: .B, acting: .C) // 탈
let so = TalentedPerson(name: "so", height: 100, singing: .B, dancing: .B, acting: .A) // 합
let gom = TalentedPersonWithBadPersonality(name: "gom", height: 123, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A) //탈
let gom1 = TalentedPersonWithBadPersonality(name: "gom1", height: 123, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A) //탈

// 톰 햄지 소 


var a = AuditionManager(totalApplicantsList: [jerry, tom, hemg, gom, ya, ho, so, gom1])
var b = AuditionManager(totalApplicantsList: [jerry, gom, ya, ho, gom1])
a.announcePassedApplicants()


print("합격자 없을 경우")
b.announcePassedApplicants()
