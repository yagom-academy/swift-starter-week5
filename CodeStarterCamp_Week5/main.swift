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
let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .A, dancing: .A, acting: .A, frequencyOfCursing: .A)
let inho = TalentedPerson(name: "inho", height: 200, singing: .A, dancing: .C, acting: .B)
let charlie = TalentedPersonWithBadPersonality(name: "charlie", height: 175, singing: .B, dancing: .B, acting: .A, frequencyOfCursing: .B)
let som = TalentedPerson(name: "som", height: 100, singing: .B, dancing: .A, acting: .C)
let applicants = [yagom, noroo, summer, coda, odong, inho, charlie, som]
var yagomEnt = AuditionManager(totalApplicantsList: applicants)

yagomEnt.cast()
yagomEnt.announcePassedApplicants()
