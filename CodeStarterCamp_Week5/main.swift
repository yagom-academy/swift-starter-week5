//
//  main.swift
//  Week5 Step1
//
//  Created by JeonSangHyeok on 2023/03/21.
//

import Foundation

let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .A, acting: .C)
let noroo = Person(name: "noroo", height: 1000)
let summer = TalentedPerson(name: "summer", height: 900, singing: .B, dancing: .B, acting: .B)
let coda = TalentedPerson(name: "coda", height: 200, singing: .A, dancing: .C, acting: .C)
let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)
    
var hyeok = AuditionManager(totalApplicantsList: [yagom, noroo, summer, coda, odong])
    
hyeok.cast()
hyeok.anouncePassedApplicants()
