//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// MARK: - STEP1. 야곰 엔터 오디션

let snoopdog = TalentedPersonWithBadPersonality(name: "snoopdog", height: 180, singing: .A, dancing: .A, acting: .B, frequancyOfCursing: .A)
let rowan = TalentedPerson(name: "rowan", height: 175, singing: .B, dancing: .C, acting: .A)
let wongbing = TalentedPerson(name: "wongbing", height: 185, singing: .A, dancing: .C, acting: .B)
let jun = Person(name: "jun", height: 170)
let chun = TalentedPerson(name: "chun", height: 176, singing: .B, dancing: .B, acting: .B)
let ame = TalentedPersonWithBadPersonality(name: "ame", height: 155, singing: .C, dancing: .A, acting: .A, frequancyOfCursing: .B)
let groot = TalentedPersonWithBadPersonality(name: "groot", height: 200, singing: .A, dancing: .A, acting: .C, frequancyOfCursing: .C)

let applicantsArray = [snoopdog, rowan, wongbing, jun, chun, ame, groot]
var auditionManager = AuditionManager(applicants: applicantsArray)
auditionManager.cast()

let mySon = Person(name: "nalgangdo", height: 10000)
//let hacker = Hacker()
//hacker.hackPassedApplicantsList()
//auditionManager.announcePassedApplicants()

print(auditionManager.totalApplicantsList.map( { $0.name } )) // 외부 접근자 사용 가능
//auditionManager.totalApplicantsList.append(mySon)  // 외부 설정자 사용 불가
