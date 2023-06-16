//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func printLine(length: Int = 10) {
    print(String(repeating: "-", count: length))
}

let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .A, acting: .C)
let noroo = Person(name: "noroo", height: 1000)
let summer = TalentedPerson(name: "summer", height: 900, singing: .B, dancing: .B, acting: .B)
let coda = TalentedPerson(name: "coda", height: 200, singing: .A, dancing: .C, acting: .C)
let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .C, dancing: .C, acting: .A, frequancyOfCursing: .A)

var auditionManager: AuditionManager = AuditionManager(totalApplicantsList: [yagom, noroo, summer, coda, odong])
auditionManager.cast()
auditionManager.showPassedApplicantList()
