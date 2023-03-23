//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .B, acting: .C)
let noroo = Person(name: "noroo", height: 1000)
let summer = TalentedPerson(name: "summer", height: 900, singing: .A, dancing: .B, acting: .B)
let coda = TalentedPerson(name: "coda", height: 200, singing: .A, dancing: .C, acting: .C)
let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)
let ryu = TalentedPerson(name: "ryu", height: 190, singing: .B, dancing: .C, acting: .B)
let choo = TalentedPerson(name: "choo", height: 180, singing: .C, dancing: .C, acting: .C)

var charles: AuditionManager = AuditionManager(totalApplciantsList: [noroo, summer, coda, odong, yagom])
var gundy: AuditionManager = AuditionManager(totalApplciantsList: [noroo, odong, ryu, choo])

let mySon = Person(name: "nalgangdo", height: 10000)

let hacker = Hacker()
hacker.hackPassedApplicantsList(to: gundy, fakePassedApplicant: mySon)

//charles.cast()
//charles.announcedPassedApplicants()

gundy.cast()
gundy.announcedPassedApplicants()

