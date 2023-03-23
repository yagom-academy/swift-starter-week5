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
let cat = TalentedPersonWithBadPersonality(name: "cat", height: 123, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)

var smEnter = AuditionManager(totalApplicantsList: [jerry, tom, hemg, gom, ya, ho, so, cat])
var jypEnter = AuditionManager(totalApplicantsList: [jerry, gom, ya, ho, cat])
smEnter.announcePassedApplicants()

print("합격자 없을 경우")
jypEnter.announcePassedApplicants()


let mySon = Person(name: "nalgangdo", height: 10000)

struct Hacker {
    func hackPassedApplicantsList() {
//        smEnter.passedApplicantsList.append(mySon)  //접근불가
    }
}

let hacker = Hacker()
hacker.hackPassedApplicantsList()
