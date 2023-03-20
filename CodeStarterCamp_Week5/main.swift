//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


let mint = TalentedPerson(name: "mint", height: 163, singing: .B, dancing: .C, acting: .B)
let sara = TalentedPerson(name: "sara", height: 158, singing: .A, dancing: .C, acting: .A)
let ohNew = TalentedPerson(name: "ohNew", height: 30, singing: .A, dancing: .A, acting: .A)
let noma = TalentedPersonWithBadPersonality(name: "noma", height: 180, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)

let yagom = AuditionManager(totalApplicantsList: [mint, sara, ohNew, noma])

yagom.cast()
yagom.announcePassedApplicants()

