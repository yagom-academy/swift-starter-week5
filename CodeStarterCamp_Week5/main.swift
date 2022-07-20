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

var jae = AuditionManager(totalApplicantsList: [yagom, noroo, summer, coda, odong])
jae.announcePassedApplicants()
