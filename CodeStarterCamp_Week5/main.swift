//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


let mint = TalentedPerson(name: "mint", height: 163, singing: .B, dancing: .B, acting: .B, visual: .A)
let sara = TalentedPerson(name: "sara", height: 158, singing: .A, dancing: .C, acting: .A, visual: .A)
let ohNew = TalentedPerson(name: "ohNew", height: 30, singing: .C, dancing: .A, acting: .A, visual: .A)
let noma = TalentedPersonWithBadPersonality(name: "noma", height: 180, singing: .A, dancing: .A, acting: .A, visual: .A, frequancyOfCursing: .C)
let SH = TalentedPerson(name: "SH", height: 174, singing: .C, dancing: .C, acting: .A, visual: .A)

let yagom = AuditionManager(totalApplicantsList: [mint, sara, ohNew, noma, SH])

yagom.cast()
yagom.announcePassedApplicants()
