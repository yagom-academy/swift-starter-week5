//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let ironMan = TalentedPerson(name: "아이언맨", height: 173, singing: .B, dancing: .A, acting: .A)
let captainAmerica = Person(name: "캡틴아메리카", height: 183)
let spiderMan = TalentedPersonWithBadPersonality(name: "스파이더맨", height: 173, singing: .B, dancing: .C, acting: .A, frequancyOfCursing: .A)
let hulk = TalentedPerson(name: "헐크", height: 226, singing: .C, dancing: .C, acting: .B)
let doctorStrange = TalentedPersonWithBadPersonality(name: "닥터스트레인지", height: 183, singing: .C, dancing: .B, acting: .A, frequancyOfCursing: .B)

let applicants = [ironMan, captainAmerica, spiderMan, hulk, doctorStrange]
var auditionManager = AuditionManager(totalApplicantsList: applicants)

auditionManager.cast()
auditionManager.announcePassedApplicants()
