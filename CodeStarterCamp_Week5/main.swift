//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/* Step 1: 야곰 엔터 오디션 */
let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .A, acting: .C)
let noroo = Person(name: "noroo", height: 1000)
let summer = TalentedPerson(name: "summer", height: 900, singing: .B, dancing: .B, acting: .B)
let coda = TalentedPerson(name: "coda", height: 200, singing: .A, dancing: .C, acting: .C)
let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)

var auditionManager = AuditionManager(totalApplicantsList: [yagom, noroo, summer, coda, odong])
auditionManager.cast()

/* Step 2: 해킹 조심! */
let mySon = Person(name: "nalgangdo", height: 10000)

struct Hacker {
    func hackPassedApplicantsList() {
        // auditionManager.passedApplicantsList.append(mySon) // -> 접근 불가
    }
}

let hacker = Hacker()
hacker.hackPassedApplicantsList()

auditionManager.announcePassedApplicants()
